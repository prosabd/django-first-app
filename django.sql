
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" da
tetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2024-08-24 13:32:16.974622');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2024-08-24 13:32:17.018934');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2024-08-24 13:32:17.067943');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2024-08-24 13:32:17.105882');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2024-08-24 13:32:17.132987');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2024-08-24 13:32:17.172570');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2024-08-24 13:32:17.197678');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2024-08-24 13:32:17.223035');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2024-08-24 13:32:17.243951');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2024-08-24 13:32:17.276578');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2024-08-24 13:32:17.291920');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2024-08-24 13:32:17.315939');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2024-08-24 13:32:17.348118');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2024-08-24 13:32:17.374902');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2024-08-24 13:32:17.402410');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2024-08-24 13:32:17.423990');
INSERT INTO django_migrations VALUES(17,'auth','0012_alter_user_first_name_max_length','2024-08-24 13:32:17.453505');
INSERT INTO django_migrations VALUES(18,'blog','0001_initial','2024-08-24 13:32:17.492996');
INSERT INTO django_migrations VALUES(19,'sessions','0001_initial','2024-08-24 13:32:17.532886');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRA
BLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INIT
IALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFER
RABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag
" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRAB
LE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log VALUES(1,'2','user-test',1,'[{"added": {}}]',4,1,'2024-08-25 09:06:24.294365');
INSERT INTO django_admin_log VALUES(2,'2','user-test',2,'[{"changed": {"fields": ["First name", "Last name"]}}]',4,1,'2024-08-25 09:07:25.692857');
INSERT INTO django_admin_log VALUES(3,'3','user-staff',1,'[{"added": {}}]',4,1,'2024-08-25 09:08:33.910678');
INSERT INTO django_admin_log VALUES(4,'3','user-staff',2,'[{"changed": {"fields": ["First name", "Last name", "Staff status"]}}]',4,1,'2024-08-25 09:08:43.711828');
INSERT INTO django_admin_log VALUES(5,'17','test django shell',1,'[{"added": {}}]',7,1,'2024-08-27 10:01:25.034586');
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'blog','post');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"
) DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_post','Can add post');
INSERT INTO auth_permission VALUES(26,7,'change_post','Can change post');
INSERT INTO auth_permission VALUES(27,7,'delete_post','Can delete post');
INSERT INTO auth_permission VALUES(28,7,'view_post','Can view post');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bo
ol NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT N
ULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$600000$cWZZ1qWy36IMA3XU8S5KbK$4O20zP4ZytBtRz8d8iD/n/GVThDYClMGOoNAixXhCNg=','2024-08-27 10:00:13.256142',1,'prosa','','pro
.sabd@gmail.com',1,1,'2024-08-24 13:33:49.234872','');
INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$600000$MTtmUfaxGGcsk1hufqP9Is$A0D19AvdYHmn76QdVBg9sfAqC1dP6++6T0Po7muwXn0=',NULL,0,'user-test','test','',0,1,'2024-08-25 0
9:06:23','user');
INSERT INTO auth_user VALUES(3,'pbkdf2_sha256$600000$kEAa25OPnMdAm8sz02UrRO$80O6iLw3On0x70NaNLlbk22W27Fywl7q6jX1OW/3k2o=','2025-01-15 20:25:22.356805',0,'user-staff','s
taff','',1,1,'2024-08-25 09:08:33','user');
CREATE TABLE IF NOT EXISTS "blog_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "text" text NOT NULL, "created_date" datetime NO
T NULL, "published_date" datetime NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_post VALUES(1,'Course for hope house Republican the western.','Practice research political. Partner speak image general. Role many item spend rest. Per
form food one to child beyond.','2024-08-24 13:33:55.538406',NULL,1);
INSERT INTO blog_post VALUES(2,'Hour realize your onto road.','Character according analysis produce skin next defense mouth. Compare artist smile rest administration co
ach former. Foreign yeah my kind again.','2024-08-24 13:33:55.557612',NULL,1);
INSERT INTO blog_post VALUES(3,'Until network bring writer experience thing.','Itself current cause hit young sense. Huge often once deal religious student fish them.',
'2024-08-24 13:33:55.587235',NULL,1);
INSERT INTO blog_post VALUES(4,'Within huge fall other.','Spring travel plant shoulder. Deep challenge account tough plant level. Successful speak that agree fill space
 go.','2024-08-24 13:33:55.606623',NULL,1);
INSERT INTO blog_post VALUES(5,'Send Democrat yourself week pass writer cover full.','Development care boy vote remember reason. Memory hair its I. Great good lawyer in
dividual type.','2024-08-24 13:33:55.624243',NULL,1);
INSERT INTO blog_post VALUES(6,'Write list big community choice.','House machine check affect. Outside attention car per both peace.','2024-08-24 13:33:55.641831',NULL,
1);
INSERT INTO blog_post VALUES(7,'Statement rise occur job world.','Perform risk population require meet people dream. Generation eight individual second build money.','2
024-08-24 13:37:05.843087','2024-08-24 13:37:05.843101',1);
INSERT INTO blog_post VALUES(8,'Senior most probably animal several national range along.','Feeling feel research policy. Black north beyond maintain trip question.','2
024-08-24 13:37:05.870384',NULL,1);
INSERT INTO blog_post VALUES(9,'Arrive occur join put.','Writer something sure full.','2024-08-24 13:37:05.895261','2024-08-24 13:37:05.895270',1);
INSERT INTO blog_post VALUES(10,'Serve this TV a word too want.','Just explain pattern Republican because service remember add. Thank hospital onto sister indeed on und
erstand activity. Generation dark kid action throughout travel quality. Toward including commercial stuff impact game.','2024-08-24 13:37:05.918627','2024-08-24 13:37:0
5.918635',1);
INSERT INTO blog_post VALUES(11,'Show difference record safe change blue building.','Make really social financial. Case office work everybody subject property usually w
e.','2024-08-24 13:37:05.943154',NULL,1);
INSERT INTO blog_post VALUES(12,'Democratic about range citizen lay fall large.','Leader support personal too. Idea yet ten must western window. Drug color firm follow.
 Enjoy home there various.','2024-08-24 13:37:05.962865',NULL,1);
INSERT INTO blog_post VALUES(13,'Whose pull simply ever.','Remember learn worker deep more recognize human. Way church red deal party. These field picture establish con
trol.','2024-08-24 13:37:05.983471','2024-08-24 13:37:05.983479',1);
INSERT INTO blog_post VALUES(14,'Lead eight behind themselves.','Human enjoy gas authority here glass so pull. Per billion size them throw hit long.','2024-08-24 13:37:
06.008716','2024-08-24 13:37:06.008724',1);
INSERT INTO blog_post VALUES(15,'Executive yourself certain anything.','Industry recently some poor. Both live authority follow.','2024-08-24 13:37:06.031436','2024-08-
24 13:37:06.031445',1);
INSERT INTO blog_post VALUES(16,'Training something war main.','Any decision difficult one. Military board return sort.','2024-08-24 13:37:06.053424',NULL,1);
INSERT INTO blog_post VALUES(17,'test django shell','test add shell','2024-08-27 10:01:15','2024-08-27 10:01:15',3);
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('wo7b6yrmolixp9lqvk60047xlg94epx1','.eJxVjEEOwiAQRe_C2hCgQMGle89AhplBqoYmpV0Z765NutDtf-_9l0iwrTVtnZc0kTgLLU6_WwZ8cNsB3aHdZolzW5cpy12RB
-3yOhM_L4f7d1Ch12-dfUB0ET1jHr21BZQ1BMpFJjsiGhXRDTxo1iV4RSb4DF6jK0jABcT7A_tLOOw:1shqxH:eokXGfjqyraPRDTeymuXUBqf8PDgykl7dnp-JNDrztg','2024-09-07 13:37:23.207095');
INSERT INTO django_session VALUES('qmr5igijs63iu3ayn7hblnxgpto5y6pg','.eJxVjEEOwiAQRe_C2hCgQMGle89AhplBqoYmpV0Z765NutDtf-_9l0iwrTVtnZc0kTgLLU6_WwZ8cNsB3aHdZolzW5cpy12RB
-3yOhM_L4f7d1Ch12-dfUB0ET1jHr21BZQ1BMpFJjsiGhXRDTxo1iV4RSb4DF6jK0jABcT7A_tLOOw:1siszl:toesjGfvnVNFLasBmgkhhGCFXptPpcBcuRmps_eKkUs','2024-09-10 10:00:13.279356');
INSERT INTO django_session VALUES('sho96oj8vf2inr2ad0xwl802xs7kp87l','.eJxVjDsOwjAQRO_iGlmxE_8o6XOGaNe7iwPIkfKpEHcnkVLAlPPezFsNsK1l2Baeh5HUVbXq8tsh5CfXA9AD6n3SearrPKI-F
H3SRfcT8et2un8HBZayr8W5QMg5GieAGBI78JKi942QaRyJsWhNbJnRpmz3dCzSQQAiA6Q-XwYCOPA:1tY9x4:0n9lJa2gfsgdsZJilWGqrxapqX6Z_OAjFsb3_k3BnVo','2025-01-29 20:25:22.390454');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',19);
INSERT INTO sqlite_sequence VALUES('django_admin_log',5);
INSERT INTO sqlite_sequence VALUES('django_content_type',7);
INSERT INTO sqlite_sequence VALUES('auth_permission',28);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',3);
INSERT INTO sqlite_sequence VALUES('blog_post',17);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "blog_post_author_id_dd7a8485" ON "blog_post" ("author_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;
