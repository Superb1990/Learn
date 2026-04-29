extends Node
class_name MyHttpClient

signal request_completed(data: Variant, response_code: int)
signal request_failed(error: String, response_code: int)

var http_request: HTTPRequest
var is_requesting: bool = false

func _ready():
	http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.request_completed.connect(_on_request_completed)

# GET 请求
func get_request(url: String, headers: PackedStringArray = []) -> void:
	if is_requesting:
		print("已有请求正在进行")
		return
	
	var error = http_request.request(url, headers)
	if error == OK:
		is_requesting = true
	else:
		request_failed.emit("请求发送失败: " + str(error), 0)

# POST 请求
func post_request(url: String, data: Dictionary, headers: PackedStringArray = []) -> void:
	if is_requesting:
		print("已有请求正在进行")
		return
	
	var json_string = JSON.stringify(data)
	var custom_headers = headers.append("Content-Type: application/json")#["Content-Type: application/json"]
	
	var error = http_request.request(url, custom_headers, HTTPClient.METHOD_POST, json_string)
	if error == OK:
		is_requesting = true
	else:
		request_failed.emit("请求发送失败: " + str(error), 0)

# 处理请求完成
func _on_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray):
	is_requesting = false
	
	if result != HTTPRequest.RESULT_SUCCESS:
		request_failed.emit("网络错误: " + str(result), response_code)
		return
	
	if response_code >= 400:
		var error_body = body.get_string_from_utf8()
		request_failed.emit("HTTP错误: " + error_body, response_code)
		return
	
	var response_body = body.get_string_from_utf8()
	
	# 尝试解析JSON
	if response_body.begins_with("{") or response_body.begins_with("["):
		var json = JSON.new()
		var parse_result = json.parse(response_body)
		
		if parse_result == OK:
			request_completed.emit(json.get_data(), response_code)
		else:
			request_completed.emit(response_body, response_code)
	else:
		request_completed.emit(response_body, response_code)
