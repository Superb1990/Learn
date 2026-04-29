extends Node

@onready var http_client = $SimpleHttpClent

func _ready():
	# 测试各种API请求
	test_apis()

func test_apis():
	# 1. 获取公共API数据
	fetch_random_user()
	
	# 2. 提交数据
	#submit_user_data()
	
	# 3. 下载文件
	#download_file()

# 获取天气数据示例
func fetch_weather(city: String = "Beijing"):
	var url = "http://www.baidu.com"
	
	http_client.get_request(url)
	http_client.request_completed.connect(_on_weather_received, CONNECT_ONE_SHOT)

func _on_weather_received(data: Variant, response_code: int):
	if data is Dictionary:
		print("天气数据: ", data)
		var weather = data.get("weather", [{}])[0]
		var main = data.get("main", {})
		
		var weather_info = {
			"city": data.get("name", "Unknown"),
			"description": weather.get("description", ""),
			"temperature": main.get("temp", 0),
			"humidity": main.get("humidity", 0)
		}
		
		print("当前天气: %s, %.1f°C, 湿度: %d%%" % [
			weather_info.description,
			weather_info.temperature,
			weather_info.humidity
		])
	else:
		print("获取天气失败")

# 获取随机用户数据
func fetch_random_user():
	var url = "https://randomuser.me/api/"
	
	http_client.get_request(url)
	http_client.request_completed.connect(_on_user_received, CONNECT_ONE_SHOT)

func _on_user_received(data: Variant, response_code: int):
	if data is Dictionary and data.has("results"):
		var user = data.results[0]
		print("随机用户: %s %s" % [
			user.name.first,
			user.name.last
		])
		print("邮箱: ", user.email)
		print("头像: ", user.picture.large)

# POST请求示例
func submit_form():
	var url = "https://httpbin.org/post"
	var form_data = {
		"username": "testuser",
		"email": "test@example.com",
		"score": 100
	}
	
	http_client.post_request(url, form_data)
	http_client.request_completed.connect(_on_form_submitted, CONNECT_ONE_SHOT)

func _on_form_submitted(data: Variant, response_code: int):
	if data is Dictionary:
		print("表单提交成功: ", data)
