SET FOREIGN_KEY_CHECKS=0;
START TRANSACTION;
CREATE TABLE IF NOT EXISTS django_migrations (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, app VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, applied DATETIME NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2019-05-24 12:58:54.011483');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2019-05-24 12:58:54.176699');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2019-05-24 12:58:54.342297');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2019-05-24 12:58:54.493889');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2019-05-24 12:58:54.632812');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2019-05-24 12:58:54.790597');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2019-05-24 12:58:54.966259');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2019-05-24 12:58:55.128848');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2019-05-24 12:58:55.266481');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2019-05-24 12:58:55.410420');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2019-05-24 12:58:55.569267');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2019-05-24 12:58:55.669996');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2019-05-24 12:58:55.870723');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2019-05-24 12:58:56.023558');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2019-05-24 12:58:56.165177');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2019-05-24 12:58:56.318923');
INSERT INTO django_migrations VALUES(17,'hust_library','0001_initial','2019-05-24 12:58:56.458523');
INSERT INTO django_migrations VALUES(18,'sessions','0001_initial','2019-05-24 12:58:56.604641');
INSERT INTO django_migrations VALUES(19,'hust_library','0002_auto_20190529_2025','2019-05-29 12:26:50.558355');
INSERT INTO django_migrations VALUES(20,'hust_library','0003_auto_20190529_2052','2019-05-29 12:52:12.646496');
INSERT INTO django_migrations VALUES(21,'hust_library','0004_auto_20190601_1124','2019-06-01 03:25:10.009449');
INSERT INTO django_migrations VALUES(22,'hust_library','0005_auto_20190607_2000','2019-06-07 12:00:15.818692');
CREATE TABLE IF NOT EXISTS auth_group_permissions (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    group_id INT NOT NULL,
    permission_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES auth_group (id),
    FOREIGN KEY (permission_id) REFERENCES auth_permission (id)
);

INSERT INTO auth_group_permissions VALUES(1,1,36);
INSERT INTO auth_group_permissions VALUES(2,1,4);
INSERT INTO auth_group_permissions VALUES(3,1,8);
INSERT INTO auth_group_permissions VALUES(4,1,12);
INSERT INTO auth_group_permissions VALUES(5,1,16);
INSERT INTO auth_group_permissions VALUES(6,1,20);
INSERT INTO auth_group_permissions VALUES(7,2,1);
INSERT INTO auth_group_permissions VALUES(8,2,2);
INSERT INTO auth_group_permissions VALUES(9,2,3);
INSERT INTO auth_group_permissions VALUES(10,2,4);
INSERT INTO auth_group_permissions VALUES(11,2,5);
INSERT INTO auth_group_permissions VALUES(12,2,6);
INSERT INTO auth_group_permissions VALUES(13,2,7);
INSERT INTO auth_group_permissions VALUES(14,2,8);
INSERT INTO auth_group_permissions VALUES(15,2,9);
INSERT INTO auth_group_permissions VALUES(16,2,10);
INSERT INTO auth_group_permissions VALUES(17,2,11);
INSERT INTO auth_group_permissions VALUES(18,2,12);
INSERT INTO auth_group_permissions VALUES(19,2,13);
INSERT INTO auth_group_permissions VALUES(20,2,14);
INSERT INTO auth_group_permissions VALUES(21,2,15);
INSERT INTO auth_group_permissions VALUES(22,2,16);
INSERT INTO auth_group_permissions VALUES(23,2,17);
INSERT INTO auth_group_permissions VALUES(24,2,18);
INSERT INTO auth_group_permissions VALUES(25,2,19);
INSERT INTO auth_group_permissions VALUES(26,2,20);
INSERT INTO auth_group_permissions VALUES(27,2,33);
INSERT INTO auth_group_permissions VALUES(28,2,34);
INSERT INTO auth_group_permissions VALUES(29,2,35);
INSERT INTO auth_group_permissions VALUES(30,2,36);
INSERT INTO auth_group_permissions VALUES(31,1,13);
INSERT INTO auth_group_permissions VALUES(32,1,6);
CREATE TABLE IF NOT EXISTS auth_user_groups (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES auth_user (id),
    FOREIGN KEY (group_id) REFERENCES auth_group (id)
);

INSERT INTO auth_user_groups VALUES(1,3,1);
INSERT INTO auth_user_groups VALUES(2,4,2);
INSERT INTO auth_user_groups VALUES(4,6,1);
CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    permission_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES auth_user (id),
    FOREIGN KEY (permission_id) REFERENCES auth_permission (id)
);
CREATE TABLE IF NOT EXISTS django_admin_log (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    action_time datetime NOT NULL,
    object_id text NULL,
    object_repr varchar(200) NOT NULL,
    change_message text NOT NULL,
    content_type_id integer NULL,
    user_id integer NOT NULL,
    action_flag smallint unsigned NOT NULL CHECK (action_flag >= 0),
    FOREIGN KEY (content_type_id) REFERENCES django_content_type (id),
    FOREIGN KEY (user_id) REFERENCES auth_user (id)
);

INSERT INTO django_admin_log VALUES(1,'2019-05-24 13:03:01.564932','1','Readers','[{"added": {}}]',8,1,1);
INSERT INTO django_admin_log VALUES(2,'2019-05-24 13:03:47.520012','2','Administrators','[{"added": {}}]',8,1,1);
INSERT INTO django_admin_log VALUES(3,'2019-05-24 13:08:46.740887','2','soyan','[{"added": {}}]',9,1,1);
INSERT INTO django_admin_log VALUES(4,'2019-05-24 13:10:32.024309','2','soyan','',9,1,3);
INSERT INTO django_admin_log VALUES(5,'2019-05-27 11:48:24.781043','3','soyan','[{"added": {}}]',9,1,1);
INSERT INTO django_admin_log VALUES(6,'2019-05-27 11:49:25.747530','3','soyan','[{"changed": {"fields": ["groups"]}}]',9,1,2);
INSERT INTO django_admin_log VALUES(7,'2019-05-27 13:12:08.374641','3','soyan','[{"changed": {"fields": ["first_name", "last_name", "email", "last_login"]}}]',9,1,2);
INSERT INTO django_admin_log VALUES(8,'2019-05-29 12:28:34.092420','1','数据库系统概论（第五版）','[{"added": {}}]',1,1,1);
INSERT INTO django_admin_log VALUES(9,'2019-05-29 12:29:42.216068','1','哈哈哈','[{"added": {}}]',3,1,1);
INSERT INTO django_admin_log VALUES(10,'2019-05-29 12:30:17.052317','1','王珊','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(11,'2019-05-29 12:30:44.814573','2','萨师煊','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(12,'2019-05-29 12:31:37.647862','4','admin1','[{"added": {}}]',9,1,1);
INSERT INTO django_admin_log VALUES(13,'2019-05-29 12:32:21.262012','4','admin1','[{"changed": {"fields": ["groups"]}}]',9,1,2);
INSERT INTO django_admin_log VALUES(14,'2019-05-29 12:33:02.840521','1','Loan object (1)','[{"added": {}}]',4,1,1);
INSERT INTO django_admin_log VALUES(15,'2019-05-29 12:47:46.653224','1','Readers','[{"changed": {"fields": ["permissions"]}}]',8,1,2);
INSERT INTO django_admin_log VALUES(16,'2019-05-30 02:08:57.140238','1','哈哈哈','[{"changed": {"fields": ["state"]}}]',3,1,2);
INSERT INTO django_admin_log VALUES(17,'2019-05-30 03:03:39.812985','1','损坏书籍','[{"added": {}}]',2,1,1);
INSERT INTO django_admin_log VALUES(18,'2019-05-31 12:46:57.083493','2','藏书号:1 书名:数据库系统概论（第五版） 损坏','[{"changed": {"fields": ["time", "state"]}}]',2,1,2);
INSERT INTO django_admin_log VALUES(19,'2019-05-31 12:48:10.187174','1','哈哈哈','[{"changed": {"fields": ["state"]}}]',3,1,2);
INSERT INTO django_admin_log VALUES(20,'2019-06-12 05:16:20.662802','7','Python编程从入门到实践','[{"added": {}}]',1,1,1);
INSERT INTO django_admin_log VALUES(21,'2019-06-12 05:17:21.214291','8','数据结构（C语言版）','[{"added": {}}]',1,1,1);
INSERT INTO django_admin_log VALUES(22,'2019-06-12 05:18:27.477606','15','严蔚敏','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(23,'2019-06-12 05:18:48.224244','16','吴伟民','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(24,'2019-06-12 05:19:33.961973','17','Eric Matthes','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(25,'2019-06-12 05:19:51.328323','18','袁国忠','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(26,'2019-06-12 05:21:05.236723','9','Python网络数据采集','[{"added": {}}]',1,1,1);
INSERT INTO django_admin_log VALUES(27,'2019-06-12 05:21:49.221062','19','Ryan Mitchell','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(28,'2019-06-12 05:22:05.904934','20','陶俊杰','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(29,'2019-06-12 05:22:38.143736','21','陈小莉','[{"added": {}}]',5,1,1);
INSERT INTO django_admin_log VALUES(30,'2019-06-14 13:23:02.478501','1','admin','[{"changed": {"fields": ["password"]}}]',9,1,2);
INSERT INTO django_admin_log VALUES(31,'2019-06-14 13:23:42.712136','4','admin1','[{"changed": {"fields": ["password"]}}]',9,1,2);
INSERT INTO django_admin_log VALUES(32,'2019-06-14 13:24:02.123743','3','soyan','[{"changed": {"fields": ["password"]}}]',9,1,2);
INSERT INTO django_admin_log VALUES(33,'2019-06-14 13:24:18.646043','6','soyan1999','[{"changed": {"fields": ["password"]}}]',9,1,2);
CREATE TABLE IF NOT EXISTS django_content_type (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    app_label varchar(100) NOT NULL,
    model varchar(100) NOT NULL
);

INSERT INTO django_content_type VALUES(1,'hust_library','book');
INSERT INTO django_content_type VALUES(2,'hust_library','ticket');
INSERT INTO django_content_type VALUES(3,'hust_library','store');
INSERT INTO django_content_type VALUES(4,'hust_library','loan');
INSERT INTO django_content_type VALUES(5,'hust_library','write');
INSERT INTO django_content_type VALUES(6,'admin','logentry');
INSERT INTO django_content_type VALUES(7,'auth','permission');
INSERT INTO django_content_type VALUES(8,'auth','group');
INSERT INTO django_content_type VALUES(9,'auth','user');
INSERT INTO django_content_type VALUES(10,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(11,'sessions','session');
CREATE TABLE IF NOT EXISTS auth_permission (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    content_type_id INT NOT NULL,
    codename VARCHAR(100) NOT NULL,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (content_type_id) REFERENCES django_content_type (id)
);



INSERT INTO auth_permission VALUES(1,1,'add_book','Can add book');
INSERT INTO auth_permission VALUES(2,1,'change_book','Can change book');
INSERT INTO auth_permission VALUES(3,1,'delete_book','Can delete book');
INSERT INTO auth_permission VALUES(4,1,'view_book','Can view book');
INSERT INTO auth_permission VALUES(5,2,'add_ticket','Can add ticket');
INSERT INTO auth_permission VALUES(6,2,'change_ticket','Can change ticket');
INSERT INTO auth_permission VALUES(7,2,'delete_ticket','Can delete ticket');
INSERT INTO auth_permission VALUES(8,2,'view_ticket','Can view ticket');
INSERT INTO auth_permission VALUES(9,3,'add_store','Can add store');
INSERT INTO auth_permission VALUES(10,3,'change_store','Can change store');
INSERT INTO auth_permission VALUES(11,3,'delete_store','Can delete store');
INSERT INTO auth_permission VALUES(12,3,'view_store','Can view store');
INSERT INTO auth_permission VALUES(13,4,'add_loan','Can add loan');
INSERT INTO auth_permission VALUES(14,4,'change_loan','Can change loan');
INSERT INTO auth_permission VALUES(15,4,'delete_loan','Can delete loan');
INSERT INTO auth_permission VALUES(16,4,'view_loan','Can view loan');
INSERT INTO auth_permission VALUES(17,5,'add_write','Can add write');
INSERT INTO auth_permission VALUES(18,5,'change_write','Can change write');
INSERT INTO auth_permission VALUES(19,5,'delete_write','Can delete write');
INSERT INTO auth_permission VALUES(20,5,'view_write','Can view write');
INSERT INTO auth_permission VALUES(21,6,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(22,6,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(23,6,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(24,6,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(25,7,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(26,7,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(27,7,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(28,7,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(29,8,'add_group','Can add group');
INSERT INTO auth_permission VALUES(30,8,'change_group','Can change group');
INSERT INTO auth_permission VALUES(31,8,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(32,8,'view_group','Can view group');
INSERT INTO auth_permission VALUES(33,9,'add_user','Can add user');
INSERT INTO auth_permission VALUES(34,9,'change_user','Can change user');
INSERT INTO auth_permission VALUES(35,9,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(36,9,'view_user','Can view user');
INSERT INTO auth_permission VALUES(37,10,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(38,10,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(39,10,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(40,10,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(41,11,'add_session','Can add session');
INSERT INTO auth_permission VALUES(42,11,'change_session','Can change session');
INSERT INTO auth_permission VALUES(43,11,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(44,11,'view_session','Can view session');
CREATE TABLE IF NOT EXISTS auth_user (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    password VARCHAR(128) NOT NULL,
    last_login DATETIME NULL,
    is_superuser BOOLEAN NOT NULL,
    username VARCHAR(150) NOT NULL UNIQUE,
    first_name VARCHAR(30) NOT NULL,
    email VARCHAR(254) NOT NULL,
    is_staff BOOLEAN NOT NULL,
    is_active BOOLEAN NOT NULL,
    date_joined DATETIME NOT NULL,
    last_name VARCHAR(150) NOT NULL
);

INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$150000$jd5Iybtoofmq$FwijIwA/2YETT5+18IkQh8D8Ypx0NBZgqhnVn55hb6E=','2019-06-14 13:23:21.268003',1,'admin','','',1,1,'2019-05-24 13:01:55.491354','');
INSERT INTO auth_user VALUES(3,'pbkdf2_sha256$150000$AdSQ60O6svHG$80M69Qd6NIl2kgpXKwnRWAiaaGD0nvOjK2QGlphlBYI=','2019-06-14 12:42:15.872234',0,'soyan','岩','soyan1999@foxmail.com',0,1,'2019-05-27 11:48:00','沙');
INSERT INTO auth_user VALUES(4,'pbkdf2_sha256$150000$fYxY9EdcVUjE$6mMI4rm0x/9mNyPJPVjyDgKcOwZ2Bf8ac0NMETYHVdc=','2019-06-14 11:52:47.323039',0,'admin1','','',0,1,'2019-05-29 12:31:00','');
INSERT INTO auth_user VALUES(6,'pbkdf2_sha256$150000$35nS36VaLzgT$dQrgWG2z7Tj8uQTgt8+mwMKdkFMCcrlORZhYa8BPmXA=','2019-06-03 13:14:42.052105',0,'soyan1999','岩','2973560852@qq.com',0,1,'2019-06-03 13:07:56.551060','沙');
CREATE TABLE IF NOT EXISTS auth_group (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(150) NOT NULL UNIQUE
);

INSERT INTO auth_group (name) VALUES ('Readers'), ('Administrators');
CREATE TABLE IF NOT EXISTS django_session (
    session_key VARCHAR(40) PRIMARY KEY NOT NULL,
    session_data TEXT NOT NULL,
    expire_date DATETIME NOT NULL
);


INSERT INTO django_session VALUES('w2l1oxle7n4rlxys1364cj3okzcdsqui','NGMwMWMwNzJkZDIyMWQ1YzViOTU4ODhhMGU2ZTMxOTE0ZWUyODc0OTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmIxMDg2MzQ5ZTE3YzJmNmM4ZjFhODk4NWZlMDYxNDAzYzUyOGFhIn0=','2019-06-28 12:42:16.017410');
INSERT INTO django_session VALUES('l449t7y8iyqr79ogz7in2af0p8dzrf0f','MGZlMGJjMmU1MjdmNTk4YTUyNWUzMTQwZTAxZDY5MWZkMjliNmU2ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNDQ2ZTQ0NjFkYmI2NmE2Njg0NWJkMjc4Y2U1YzA5ZjBjZGY4NzE3In0=','2019-06-28 13:24:19.070962');
CREATE TABLE IF NOT EXISTS hust_library_loan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    time DATETIME NOT NULL,
    state SMALLINT NOT NULL,
    reader_id INT NOT NULL,
    store_id INT NOT NULL,
    FOREIGN KEY (reader_id) REFERENCES auth_user (id),
    FOREIGN KEY (store_id) REFERENCES hust_library_store (id)
);


INSERT INTO hust_library_loan VALUES(5,'2019-06-07 07:03:50.043960',0,3,3);
INSERT INTO hust_library_loan VALUES(6,'2019-06-12 03:14:54.859294',2,3,3);
INSERT INTO hust_library_loan VALUES(7,'2019-06-12 05:36:50.298965',0,3,8);
INSERT INTO hust_library_loan VALUES(8,'2019-06-12 05:37:20.549842',0,3,10);
INSERT INTO hust_library_loan VALUES(9,'2019-06-12 07:19:24.184127',1,3,3);
INSERT INTO hust_library_loan VALUES(10,'2019-06-12 07:20:11.767083',1,3,10);
INSERT INTO hust_library_loan VALUES(11,'2019-06-12 07:21:53.046826',1,3,10);
INSERT INTO hust_library_loan VALUES(12,'2019-06-12 07:22:57.328120',1,3,8);
INSERT INTO hust_library_loan VALUES(13,'2019-06-12 07:27:14.346889',0,3,6);
INSERT INTO hust_library_loan VALUES(14,'2019-06-12 07:27:23.553995',2,3,6);
INSERT INTO hust_library_loan VALUES(15,'2019-06-14 12:14:36.194858',0,3,14);
INSERT INTO hust_library_loan VALUES(16,'2019-06-14 12:16:05.988244',2,3,14);
INSERT INTO hust_library_loan VALUES(17,'2019-06-14 12:22:20.124636',1,3,14);
INSERT INTO hust_library_loan VALUES(18,'2019-06-14 12:26:10.648187',0,3,13);
CREATE TABLE IF NOT EXISTS hust_library_book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    time INTEGER NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    publish VARCHAR(150) NOT NULL
);


INSERT INTO hust_library_book VALUES(4,'数据库系统概论（第五）',2014,99.5999999999999944,'高等教育出版社');
INSERT INTO hust_library_book VALUES(5,'数据库系统概论（第四版）',2010,30.10000000000000142,'高等教育出版社');
INSERT INTO hust_library_book VALUES(6,'编译原理（第3版）',2015,49,'清华大学出版社');
INSERT INTO hust_library_book VALUES(7,'Python编程从入门到实践',2016,89,'人民邮电出版社');
INSERT INTO hust_library_book VALUES(8,'数据结构（C语言版）',2011,35,'清华大学出版社');
INSERT INTO hust_library_book VALUES(9,'Python网络数据采集',2016,59,'人民邮电出版社');
CREATE TABLE IF NOT EXISTS hust_library_store (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    state SMALLINT NOT NULL,
    book_id INTEGER NOT NULL,
    location VARCHAR(150) NOT NULL,
    FOREIGN KEY (book_id) REFERENCES hust_library_book (id)
);

INSERT INTO hust_library_store VALUES(3,0,4,'流通三线书库');
INSERT INTO hust_library_store VALUES(4,1,4,'流通书库(B区)');
INSERT INTO hust_library_store VALUES(5,1,5,'哈哈哈');
INSERT INTO hust_library_store VALUES(6,0,6,'主图C201');
INSERT INTO hust_library_store VALUES(7,1,6,'流通书库B区');
INSERT INTO hust_library_store VALUES(8,2,6,'东区分馆431');
INSERT INTO hust_library_store VALUES(9,1,7,'流通书库(B区)');
INSERT INTO hust_library_store VALUES(10,0,7,'主馆C201、C202');
INSERT INTO hust_library_store VALUES(11,1,9,'东校区分馆阅览室 （东区分馆431）');
INSERT INTO hust_library_store VALUES(12,1,9,'主馆C201、C202');
INSERT INTO hust_library_store VALUES(13,0,8,'东校区分馆阅览室 （东区分馆431）');
INSERT INTO hust_library_store VALUES(14,2,8,'光盘借阅室(C401)');
CREATE TABLE IF NOT EXISTS hust_library_ticket (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    price DECIMAL NOT NULL,
    time DATETIME NOT NULL,
    state SMALLINT NOT NULL,
    reader_id INTEGER NOT NULL,
    description VARCHAR(150) NOT NULL,
    FOREIGN KEY (reader_id) REFERENCES auth_user (id)
);

INSERT INTO hust_library_ticket VALUES(1,10,'2019-05-30 03:02:00',1,3,'损坏书籍');
INSERT INTO hust_library_ticket VALUES(2,39.60000000000000142,'2019-05-31 12:45:00',1,3,'藏书号:1 书名:数据库系统概论（第五版） 损坏');
INSERT INTO hust_library_ticket VALUES(3,49,'2019-06-12 07:22:57.617447',1,3,'藏书号:8 书名:编译原理（第3版） 损坏');
INSERT INTO hust_library_ticket VALUES(4,35,'2019-06-14 12:22:20.401882',1,3,'藏书号:14 书名:数据结构（C语言版） 损坏');
CREATE TABLE IF NOT EXISTS hust_library_write (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    book_id INTEGER NOT NULL,
    writer VARCHAR(150) NOT NULL,
    FOREIGN KEY (book_id) REFERENCES hust_library_book (id)
);

INSERT INTO hust_library_write VALUES(6,4,'萨师煊');
INSERT INTO hust_library_write VALUES(7,4,'王珊');
INSERT INTO hust_library_write VALUES(8,5,'王珊');
INSERT INTO hust_library_write VALUES(9,5,'萨师煊');
INSERT INTO hust_library_write VALUES(10,6,'王生原');
INSERT INTO hust_library_write VALUES(11,6,'董渊');
INSERT INTO hust_library_write VALUES(12,6,'张素琴');
INSERT INTO hust_library_write VALUES(13,6,'吕映芝');
INSERT INTO hust_library_write VALUES(14,6,'蒋维杜');
INSERT INTO hust_library_write VALUES(15,8,'严蔚敏');
INSERT INTO hust_library_write VALUES(16,8,'吴伟民');
INSERT INTO hust_library_write VALUES(17,7,'Eric Matthes');
INSERT INTO hust_library_write VALUES(18,7,'袁国忠');
INSERT INTO hust_library_write VALUES(19,9,'Ryan Mitchell');
INSERT INTO hust_library_write VALUES(20,9,'陶俊杰');
INSERT INTO hust_library_write VALUES(21,9,'陈小莉');

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (group_id, permission_id);
CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (group_id);
CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (permission_id);

CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (user_id, group_id);
CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups (user_id);
CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups (group_id);

CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (user_id, permission_id);
CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (user_id);
CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (permission_id);

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log (content_type_id);
CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log (user_id);

CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (app_label, model);

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (content_type_id, codename);
CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission (content_type_id);

CREATE INDEX django_session_expire_date_a5c62663 ON django_session (expire_date);

CREATE INDEX hust_library_loan_reader_id_d699927a ON hust_library_loan (reader_id);
CREATE INDEX hust_library_loan_store_id_30b6d45c ON hust_library_loan (store_id);

-- 在 SQLite 中，复合唯一索引改为普通索引
CREATE INDEX hust_library_book_name_publish_time_price_bb8735ce_uniq ON hust_library_book (name, publish, time, price);

CREATE INDEX hust_library_store_book_id_bb156e46 ON hust_library_store (book_id);

CREATE INDEX hust_library_ticket_reader_id_5c3b20ca ON hust_library_ticket (reader_id);

-- 在 SQLite 中，复合唯一索引改为普通索引
CREATE INDEX hust_library_write_writer_book_id_39fd11d3_uniq ON hust_library_write (writer, book_id);
CREATE INDEX hust_library_write_book_id_89ad20ea ON hust_library_write (book_id);

COMMIT;
