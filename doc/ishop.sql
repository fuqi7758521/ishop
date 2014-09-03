#用户登录权限
create table user_auth(
	id int AUTO_INCREMENT,
	username varchar(255),
	password varchar(255),
	email varchar(20),
	isCheckedEmail tinyint(1) default 0,
	mobile varchar(20),
	isCheckedMobile tinyint(1) default 0,
	status tinyint(1) default 1,
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

#用户基本信息
create table user_base(
	userId int,
	nickname varchar(50),
	gender tinyint(1) default 2,
	birthday date,
	realname varchar(15),
	avatar varchar(255),
	PRIMARY KEY (user_id)
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

#商品基本信息
create table product_base(
	id int AUTO_INCREMENT,
	name varchar(100),#上面名称
	titleitle varchar(255),#商品标题介绍
	code varchar(20),#商品编号
	salePrice float,#销售价格
	referencePrice float,#参考价格
	leftQuantity int,#库存
	status tinyint(1) default 1,#商品状态：有货或无货
	description text,#商品介绍
	specification text,#规格参数
	packingList text,#包装清单
	category smallint,#商品类别
	avatar varchar(255),#商品头像
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

#总订单
create table order(
	id int AUTO_INCREMENT,
	orderId int,#订单号
	userId int,
	status tinyint(1),
	createdDate datetime,#订单创建时间
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

#商品订单
create table prodectOrder(
	id int AUTO_INCREMENT,
	parentOrderId int,#总订单id
	productId int,#商品id
	quantity int,#购买数量
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

#支付记录
create table charge_log(
	id int AUTO_INCREMENT,
	orderId int,
	userId int,
	money float,
	createdDate datetime,
	resultDate datetie,
	status tinyint
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

