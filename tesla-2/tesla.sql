/*设置客户端连接服务器端的编码*/
SET NAMES UTF8;
/*丢弃数据库，如果存在*/
DROP DATABASE IF EXISTS tesla;
/*创建新的数据库，设置存储编码*/
CREATE DATABASE tesla CHARSET=UTF8;
/*进入该数据库*/
USE tesla;

/*创建保存用户信息数据的表*/
CREATE TABLE tesla_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,  # 用户名唯一ID主键且自增
	username VARCHAR(32) NOT NULL, # 用户名字
	surnames VARCHAR(32) NOT NULL, # 姓氏
	email VARCHAR(64) NOT NULL, # 电子邮箱
	password VARCHAR(32) NOT NULL, # 密码,MD5格式
	phone VARCHAR(11) NOT NULL UNIQUE, # 电话
	id_card VARCHAR(32) NOT NULL # 身份证
);
/*插入数据*/
INSERT INTO tesla_user VALUES(1,'leilei','li','1222345@qq.com','12345678','18322233344','110101199003071655');
INSERT INTO tesla_user VALUES(2,'san','zhang','1222345@qq.com','12345678','18322233345','110101199003076632');

/*汽车订制*/ 
/*创建保存车型数据的表*/
CREATE TABLE tesla_car_Type(
	tid INT PRIMARY KEY AUTO_INCREMENT, #车型ID,主键且自增
	carType_img  VARCHAR(128) NOT NULL, #车型图片
	carType_range VARCHAR(16) NOT NULL,  # 续航里程
	carType_TopSpeed VARCHAR(16) NOT NULL, #最高时速
	carType_acceleration VARCHAR(16) NOT NULL, #百公里加速
	Double_wheel_drive VARCHAR(32) NOT NULL,  #双电机全轮驱动
	Double_wheel_drive1 VARCHAR(32) NOT NULL,  #双电机全轮驱动配置1
	Double_wheel_drive2 VARCHAR(32) NOT NULL,  #双电机全轮驱动配置2
	Double_wheel_drive1_price VARCHAR(16) NOT NULL,  #双电机全轮驱动配置1的价格
	Double_wheel_drive2_price VARCHAR(16) NOT NULL,  #双电机全轮驱动配置2的价格
	carType_Introduction VARCHAR(250) NOT NULL #车型文章内容
);
INSERT INTO tesla_car_Type VALUES(11,'车型图片1','468 km','225 km/h','5.6 秒','双电机全轮驱动','长续航版','Performance 高性能版','¥ 488,000','¥ 535,000','Tesla 全轮驱动车型搭载两台独立电机以提升冗余度，每台电机只有一个活动部件，耐用性高且易于维护。与传统的全轮驱动系统不同，两台电机可精准地分配前后轮扭矩，操控性和牵引力控制更为出色。</br>价格仅为预估，实际价格以最终公布为准。</br>待监管机构批准。');
INSERT INTO tesla_car_Type VALUES(22,'车型图片2','505 km','217 km/h','5.1 秒','双电机全轮驱动','长续航版','Performance 高性能版','¥ 249,900','¥ 309,900','Tesla 全轮驱动车型搭载两台独立电机以提升冗余度，每台电机只有一个活动部件，耐用性高且易于维护。与传统的全轮驱动系统不同，两台电机可精准地分配前后轮扭矩，操控性和牵引力控制更为出色。</br>价格仅为预估，实际价格以最终公布为准。</br>待监管机构批准。');
INSERT INTO tesla_car_Type VALUES(33,'车型图片3','719 km','250 km/h','3.8 秒','双电机全轮驱动','长续航版','Performance 高性能版','¥ 488,000','¥ 535,000','Tesla 全轮驱动车型搭载两台独立电机以提升冗余度，每台电机只有一个活动部件，耐用性高且易于维护。与传统的全轮驱动系统不同，两台电机可精准地分配前后轮扭矩，操控性和牵引力控制更为出色。</br>价格仅为预估，实际价格以最终公布为准。</br>待监管机构批准。');
/*创建保存车外观数据的表*/
CREATE TABLE tesla_car_Appearance(
	aid INT PRIMARY KEY AUTO_INCREMENT, #车外观ID,主键且自增
	car_Appearance_img  VARCHAR(128) NOT NULL, #车外观图片
	car_color1 VARCHAR(16) NOT NULL, # 选择颜色1
	car_color2 VARCHAR(16) NOT NULL, # 选择颜色2
	car_color3 VARCHAR(16) NOT NULL, # 选择颜色3
	car_color4 VARCHAR(16) NOT NULL, # 选择颜色4
	car_color5 VARCHAR(16) NOT NULL, # 选择颜色5
	car_color_price VARCHAR(16) NOT NULL, # 选择颜色价格
	car_tyre1 VARCHAR(16) NOT NULL, # 选择轮毂1
	car_tyre2 VARCHAR(16) NOT NULL, # 选择轮毂2
	car_tyre_price VARCHAR(16) NOT NULL # 选择轮毂价格

);
INSERT INTO tesla_car_Appearance VALUES(111,'车外观图片1',"纯黑色车漆","珍珠白（多涂层）车漆","冷光银车漆","深海蓝车漆","中国红（多涂层）车漆","¥ 8,000","18 英寸动力轮毂","19 英寸运动轮毂","¥ 6,000");

/*创建保存车内饰数据的表*/
CREATE TABLE tesla_car_Interior(
	Iid INT PRIMARY KEY AUTO_INCREMENT, #车内饰ID,主键且自增
	car_Interior_img  VARCHAR(128) NOT NULL, #车内饰图片
	car_Seat_color1 VARCHAR(16) NOT NULL, # 车内饰颜色1 
	car_Seat_color2 VARCHAR(16) NOT NULL, # 车内饰颜色2
	car_Seat_color3 VARCHAR(16), # 车内饰颜色3
	car_Seat_color4 VARCHAR(16), # 车内饰颜色4
	car_Seat_price VARCHAR(16), #车内饰价格
	car_Interior_contains VARCHAR(300) NOT NULL # 车内饰包含的内容
);
INSERT INTO tesla_car_Interior VALUES(1111,'车内饰图片1',"纯黑色高级内饰（黑色座椅）","黑白高级内饰（白色座椅）",NULL,NULL,'¥ 8,000',"<ul><li>前排座椅加热，可向12个方向电动调节</li><li>高级座椅材质与饰板</li><li>升级版音响系统，沉浸式音效</li><li>高级车载娱乐服务（30 天免费）</li><li>通过蓝牙进行音乐和媒体播放</li><li>有色玻璃车顶，有效阻隔紫外线和红外线</li><li>电动折叠、加热式侧后视镜</li><li>驾驶员偏好设置</li><li>中控台无线手机充电器</li></ul>");
INSERT INTO tesla_car_Interior VALUES(1222,'车内饰图片1',"纯黑色高级内饰（黑色座椅）","黑白高级内饰（白色座椅）",NULL,NULL,'¥ 8,000',"<ul><li>前排座椅加热，可向12个方向电动调节</li><li>高级座椅材质与饰板</li><li>升级版音响系统，沉浸式音效</li><li>高级车载娱乐服务（30 天免费）</li><li>通过蓝牙进行音乐和媒体播放</li><li>有色玻璃车顶，有效阻隔紫外线和红外线</li><li>电动折叠、加热式侧后视镜</li><li>驾驶员偏好设置</li><li>中控台无线手机充电器</li></ul>");
/*创建保存 Autopilot自动辅助驾驶数据的表*/
CREATE TABLE tesla_Autopilot(
	Aid INT PRIMARY KEY AUTO_INCREMENT, #ID,主键且自增
	title VARCHAR(32) NOT NULL, #本页标题
	title_Details VARCHAR(250) NOT NULL, #本页标题详情
	video VARCHAR(64) NOT NULL, #本页视频路径
	Basic_Edition  VARCHAR(250) NOT NULL, #基础版辅助驾驶功能
	Fully_automatic VARCHAR(250) NOT NULL, #完全自动驾驶能力
	Coming_soon VARCHAR(250) NOT NULL, #即将推出
	Configuration_price VARCHAR(16) NOT NULL, #配置价格
	Autopilot_contains VARCHAR(250) NOT NULL #配置完全自动驾驶车载电脑
);
INSERT INTO tesla_Autopilot VALUES(1,'Autopilot 自动辅助驾驶','Autopilot 自动辅助驾驶先进的安全与便捷功能，旨在帮助您将驾驶化繁为简。所有全新 Tesla 车辆均标配基础驾驶辅助功能，如紧急制动、碰撞预警和盲点监测等。','视频路径1','<li>车辆能够根据其他车辆与行人在行驶车道内自动辅助实施转向、加速和制动。</li>','<ul><li>自动泊车：平行泊车与垂直泊车。</li><li>自动辅助导航驾驶：自动驶入和驶出高速公路匝道或立交桥岔路口，超过行驶缓慢的车辆。
</li><li>智能召唤：在合适的场景下，停在车位的车辆会响应您的召唤，驶出车位并前往您所在的位置。</li></ul>','<ul><li>识别交通信号灯和停车标志并做出反应。,</li><li>在城市街道中自动辅助驾驶。</li></ul>','¥ 54,000','完全自动驾驶能力可在交付后进行购买，价格可能会随着新功能的推出而升高</br>目前可用的功能需要驾驶员主动进行监控，车辆尚未实现完全自动驾驶。上述功能的激活与使用将需要数十亿英里的行驶里程的论证，以达到远超人类驾驶员的可靠性；同时还有赖于行政审批（某些司法管辖区可能会需要更长的时间）。随着上述自动驾驶功能的进化与完善，您的车辆将通过 OTA 空中软件更新而持续升级。');
INSERT INTO tesla_Autopilot VALUES(2,'Autopilot 自动辅助驾驶','Autopilot 自动辅助驾驶先进的安全与便捷功能，旨在帮助您将驾驶化繁为简。所有全新 Tesla 车辆均标配基础驾驶辅助功能，如紧急制动、碰撞预警和盲点监测等。','视频路径1','<li>车辆能够根据其他车辆与行人在行驶车道内自动辅助实施转向、加速和制动。</li>','<ul><li>自动泊车：平行泊车与垂直泊车。</li><li>自动辅助导航驾驶：自动驶入和驶出高速公路匝道或立交桥岔路口，超过行驶缓慢的车辆。
</li><li>智能召唤：在合适的场景下，停在车位的车辆会响应您的召唤，驶出车位并前往您所在的位置。</li></ul>','<ul><li>识别交通信号灯和停车标志并做出反应。,</li><li>在城市街道中自动辅助驾驶。</li></ul>','¥ 64,000','完全自动驾驶能力可在交付后进行购买，价格可能会随着新功能的推出而升高</br>目前可用的功能需要驾驶员主动进行监控，车辆尚未实现完全自动驾驶。上述功能的激活与使用将需要数十亿英里的行驶里程的论证，以达到远超人类驾驶员的可靠性；同时还有赖于行政审批（某些司法管辖区可能会需要更长的时间）。随着上述自动驾驶功能的进化与完善，您的车辆将通过 OTA 空中软件更新而持续升级。');
