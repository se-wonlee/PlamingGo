--------------------------------------------------------
--  ������ ������ - ������-6��-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence DREVIEW_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."DREVIEW_NUM_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MOVIE_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."MOVIE_CODE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 519 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."CODE_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 40 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NO_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."NO_NUM_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."QNA_NUM_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."USER_CODE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_NUM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."REVIEW_NUM_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 40 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table PG_DRAMA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PG_DRAMA" 
   (	"CODE" NUMBER, 
	"HITS" NUMBER(20,0) DEFAULT 0, 
	"IMG" VARCHAR2(500 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"RATING" NUMBER, 
	"OPENDATE" VARCHAR2(20 BYTE), 
	"NATION" VARCHAR2(100 BYTE), 
	"AGE" VARCHAR2(20 BYTE), 
	"EPI" VARCHAR2(10 BYTE), 
	"DIRECTOR" VARCHAR2(100 BYTE), 
	"ACTOR" VARCHAR2(100 BYTE), 
	"GENRE" VARCHAR2(200 BYTE), 
	"SUMMARY" VARCHAR2(2000 BYTE), 
	"TRAILER" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PG_DRAMA_REVIEW
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PG_DRAMA_REVIEW" 
   (	"BNO" NUMBER, 
	"RNO" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PG_MOVIE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PG_MOVIE" 
   (	"MOVIE_CODE" NUMBER, 
	"MOVIE_TITLE" VARCHAR2(100 BYTE), 
	"MOVIE_IMG" VARCHAR2(500 BYTE), 
	"MOVIE_AGE" VARCHAR2(20 BYTE), 
	"MOVIE_TIME" VARCHAR2(10 BYTE), 
	"MOVIE_SUMMARY" VARCHAR2(2000 BYTE), 
	"MOVIE_DIRECTOR" VARCHAR2(100 BYTE), 
	"MOVIE_ACTOR" VARCHAR2(100 BYTE), 
	"MOVIE_GENRE" VARCHAR2(20 BYTE), 
	"MOVIE_NATION" VARCHAR2(20 BYTE), 
	"MOVIE_DATE" VARCHAR2(20 BYTE), 
	"MOVIE_RATING" NUMBER, 
	"MOVIE_TRAILER" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PG_NOTICE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PG_NOTICE" 
   (	"NO_NUM" NUMBER, 
	"NO_ID" VARCHAR2(20 BYTE), 
	"NO_TITLE" VARCHAR2(500 BYTE), 
	"NO_CONTENT" VARCHAR2(4000 BYTE), 
	"NO_DATE" DATE DEFAULT sysdate, 
	"NO_HITS" VARCHAR2(10 BYTE) DEFAULT 0, 
	"NO_GROUP" NUMBER(4,0), 
	"NO_STEP" NUMBER(4,0), 
	"NO_INDENT" NUMBER(4,0), 
	"NO_FILESRC" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PG_QNA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PG_QNA" 
   (	"QNA_NUM" NUMBER, 
	"QNA_ID" VARCHAR2(20 BYTE), 
	"QNA_TITLE" VARCHAR2(100 BYTE), 
	"QNA_CONTENT" VARCHAR2(2000 BYTE), 
	"QNA_DATE" DATE DEFAULT sysdate, 
	"QNA_HITS" VARCHAR2(10 BYTE) DEFAULT 0, 
	"QNA_GROUP" NUMBER(4,0), 
	"QNA_STEP" NUMBER(4,0), 
	"QNA_INDENT" NUMBER(4,0), 
	"FILESRC" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PG_USER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PG_USER" 
   (	"USER_CODE" NUMBER(5,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_PASS" VARCHAR2(20 BYTE), 
	"USER_MAIL" VARCHAR2(30 BYTE), 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"USER_BIRTH" VARCHAR2(8 BYTE), 
	"USER_GENDER" NUMBER(1,0), 
	"USER_PHONE" VARCHAR2(11 BYTE), 
	"USER_REGDATE" DATE DEFAULT sysdate, 
	"USER_LEVEL" VARCHAR2(10 BYTE), 
	"USER_STATUS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MPG_REVIEW
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MPG_REVIEW" 
   (	"REVIEW_NUM" NUMBER, 
	"JOIN_CODE" NUMBER, 
	"MREVIEW_WRITER" VARCHAR2(10 BYTE), 
	"MREVIEW_CONTENT" VARCHAR2(200 BYTE), 
	"MREVIEW_RATING" NUMBER, 
	"MREVIEW_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.PG_DRAMA
SET DEFINE OFF;
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (1,288,'�κ���-����.jpg','�κ��� ����',4.4,'2020','�ѱ�','û��','16','�����','�����, ������, �Ѽ���, �ڼ���, �迵��','������','[��������] ������ �������а� ���������� ������ ����, ��������� �Ƶ���� ���η��� �� ���� ��ư��� ����. 
�׷��� ���� �¿��� �ܵ��� �˰� �Ǹ鼭 ������ �ϻ��� �۵θ�° ��鸮�� �����Ѵ�.','https://youtu.be/WSSJNc97Qj0');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (3,5,'killing-eve-season2.jpg','ų�� �̺� ���� 2',4.1,'2019','����','û��','8','����ü��ī �׷�����, ���� �����, ���̸� ��ӽ�','���� ��, ���� �ڸ�, �ǿ��� ��, Ŵ ����Ͼ�','������','���� �ɸ��� ������ ��̸� ���� ���� ������ ��� �̺�, û�� ���ο� ���� ������ ��ư��� �������н� ų�� �����.
 �� �� ���� ������ ������� ���θ� �ѱ� �����Ѵ�.','https://youtu.be/XVTZhOLpXjI');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (4,233,'killing-eve-season32.jpg','ų�� �̺� ���� 3',4.1,'2020','�ѱ�','û��','8','���̸� ��ӽ�, �׸� �Ƶ���, ���� ����','���� ��, ���� ���, �ǿ��� ��, Ŵ ����Ͼ�','������','�����̰� �ǰ� �;��� MI5 ���� �̺�� å�� �տ� ���� ������ ������ ������ �־���. 
����� �پ ų�� ������� �� �������� ������ �����ϴ� ���� ��� ��� ��� �־���. 
�� �� ���� ����� ������ ���ο��� ������� ���θ� �ѱ� �����Ѵ�. �������� ������ �׼� �������� ���ʶ߸��� �߰� ������ ��������.','https://youtu.be/uJCxUaClpzE');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (5,204,'Extracurricular2.jpg','�ΰ�����',4.5,'2020','�ѱ�','û��','10','���ѻ�, ������','�赿��, ���ٺ�, ������','������','���� ���� �ʰ� ����. �б� �ȿ����� �����ϰ� ������� ������. 
�б� �ۿ����� ���� �ٸ� �󱼷� ��� �ִ�. �װ� ������ �ҹ� ����� �߽ɿ� �ִ�. �ƹ��� �𸣰�.','https://youtu.be/vq9dP3w7H0w');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (6,158,'kingdom-season2.jpg','ŷ�� ���� 2',4,'2020','�ѱ�','û��','6','������, �輺��, ������','������, ���·�, ��γ�','������','���� ������ ������ ������ ����. ��ȯ���� ������ ���� ���ư��̴� �Ѵ�. 
�׵��� ���� ������ ����� ���������� ���� ���� ������. �������� ���� ���ϴ� ������ �����ϱ�.','https://youtu.be/7ecrESKwh_Y');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (7,126,'why-women-kill11.jpg','���� ��� ų',4.6,'2019','�̱�','û��','10','���̺� �׷ν���, ���̺�� ����, ��ũ ��','��� ����, ������ ����, Ŀ�� ����-��Ƽ��Ʈ','�ڹ̵�','�ϳ��� ��, 3���� ����, 3���� ����! �����ó ���� ��, �米���� ���� �ø�, ���ڿ��ָ� ���� ���Ϸ�. 
�̵� ������ ������, ����. ��ȥ���� ������ ���� �Ƴ����� ġ���� ��ȹ�� ���۵ȴ�.','https://youtu.be/zV2bT8r2cv8');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (8,0,'years-and-years3.jpg','�̾���&�̾���',4.5,'2019','����','15��','6','���̸� ���� ����, ���� ������','���� �轼, �θ� Ű�Ͼ�, ����ī ������','SF','�귺��Ʈ ���� ����, ����� ��� ��ġ�� ���� ���� �α���̸� �ϴ� ����, �� ������ �����簡 �ظ� �ŵ��ϸ� ������ ��������. 
�츮�� �̷��� ���� ����ϰ� �η����ϴ� ��� ���� ���⿡ �ִ�.','https://youtu.be/9jLbW0CIt88');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (9,0,'you-season1.jpg','���� ��� �� ���� 1',4.2,'2018','�̱�','û��','16','�׷��� ����Ƽ, ���� ����','�� ������, �����ں��� ����, ���丮�� �۵巹Ƽ','������','������ ������ ������� �ٰ����� ���ؼ����, ���� ���̵� �� �� �ִ�. 
������ �ŷ��� ������, ������ ���� �����ִ� ����. ���� �Ҹ� ��ġ�� �θǽ��� ���۵ȴ�.','https://youtu.be/RTmzZ5ipCq4');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (10,0,'you-season2.jpg','���� ��� �� ���� 2',4.3,'2019','�̱�','û��','10','�׷��� ����Ƽ, ���� ����','�� ������, �����ں��� ����, ���丮�� �۵巹Ƽ','������','������ ���� �Ŵ������� �ݵ��� ������, ��. �װ� ���п��� ���� ���� �Ѵ��� ���Ѵ�.
 ������ �����ߴ� ���� ù�λ��� ����� ��, ���߾��� ���� ��Ʋ�� �̸��� �巯����.','https://youtu.be/JPbJzCTWjCs');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (11,0,'the-politician.jpg','�� ����Ƽ��',3.9,'2019','�̱�','15��','8','���̾� ����, �귡�� ��ô, �̾� �극��','�� �÷�, ��׽� ��Ʈ��, ����ī ��','�ڹ̵�','�װ� ��� �̷� ����! �л�ȸ�� ���ſ� ������ ��Ÿ����.
 ������ �缱 �ĺ�������, ���� ������ �ٲ� ���ۿ� ���� ����ư. ������ ���̰� ������ ���׸���Ʈ�� �����Ѵ�.','https://youtu.be/zSj4Xm4raTg');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (12,0,'the-witcher.jpg','����',3.5,'2019','�̱�','û��','8','�η� ����Ʈ ������','� ī��, �ִϾ� ö��Ʈ��, �����̾� �ٷ�','�׼�','�����˿� ���İ� ��Ÿ����. �Է�Ʈ���� ���밨�� �巯���� �����.
 �׸� �ҷ��� ������� �� ������ �׿��޶� �����Ѵ�. �ø��� �������尡 �����ؿ��� ���� ����������.','https://youtu.be/bjSnsUFPxLI');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (13,0,'doctor-poster-season1.jpg','���� ������ ���� 1',4,'2015','����','û��','5','�� ��','���� ����, ��Ƽ ī��, Ŭ����-ȩ �ֽ�Ƽ, ���� �ڸ�','������','�ְ��� �ǻ� ������ �Ϻ��� ���� ��ư��� �� �������� ���� ���̸��� �ܵ��� ��ġä�� ��ο� ������.
 ������ ���̸��� �ѷ��� ������ �ֺ� �ι������ �ı����� ���� ����.','https://youtu.be/KCa9CL4Z0Dk');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (14,0,'doctor-poster-season2.jpg','���� ������ ���� 2',3.8,'2017','����','û��','5','������ �ι���, ����ũ ��Ʋ��','���� ����, ��Ƽ ī��, �� ���Ϸ�, ���� �ڸ�','������','�Ǹ��� �ǻ� ������ �Ϻ��� ���� ��ư��� �� �������� ���� ���̸��� �ܵ��� ��ġä�� ��ο� ������,
 ������ ���̸��� �ѷ��� ������ �ֺ� �ι������ �ı����� ���� ����.','https://youtu.be/lQxTx8gfw8M');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (15,0,'friends1.jpg','������',4.8,'1994','�̱�','15��','240','���̺�� ũ����, ��ī ī������','������ �ִϽ���, ��Ʈ�� �۽�, ���� ����','�ڹ̵�','���õ� ī�信 �� ���� ģ����. ��ȥ���� ���ǿ� ���� �ν��� �޷����� �ٵ� ������ ���� �� ��,
 �����巹���� ���� ������ ī��� �޷����. ��, �츮�� �ƴ� ���̳�?','https://youtu.be/BKkUiuAUluk');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (16,0,'������-��.jpg','������ �� ��Ʈ 3',4,'2019','������','û��','13','�˷��� �ǳ�','�츣���� �ڸ�����, �˹ٷ� ����, ��ġ�Ƹ� ������','����','������ ���󱹿� ħ���� 8���� ���尭���� �̵��� �ۿ��� �����ϴ� õ�� �������� ���Ⱑ ���ƴ�. �� ��ġ ��Ȳ���� ������ �������� ���İ�����, 
���� ������ ������ ������� �������� ������ ��ü�� ���� ��������� �ִ�. ���� �̵��� ��ȹ�� ������ �� ������?','https://youtu.be/Vm3qIH4nh3E');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (17,0,'stranger-things-season3.jpg','�⹦�� �̾߱� ���� 3',4.1,'2019','�̱�','15��','8','�� ����','���볪 ���̴�, ���̺� �Ϲ�, �� �����ϵ�, �и� �ٺ� ����','����','ģ���� ������ �ڽ��� ������ ���ư��� �� ���� ���� �̻��� ���� ���� �ǰ�,
 ���� �ִ� ������ ����� ������ ��� ����ǿ����� ������ ���� ��������.','https://youtu.be/5doYRBh4kuA');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (18,0,'�̶���-����1.jpg','�̶��� ���� 1',4.1,'2009','�̱�','15��','6','�ٸ��� ����','  �̶��� ��Ʈ, ��Ʈ���þ� ȣ��, �� ������','�ڹ̵�','�米���� ��Ȱ�� �ͼ����� �ʰ�, ���� ��𼭳� ������ �Ǽ��� ��� ����Ű���� ģ����� �Բ� ��Ȱ�ϰ� ��ư��� �̶����� �ϻ��� �׸���.','https://youtu.be/zuBEHek67XY');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (19,0,'��-�÷��̽�5.jpg','�� �÷��̽� ���� 4',4.3,'2019','�̱�','û��','16','����Ŭ ����','ũ����ƾ ��, �׵� ��, ������ �轼 ����','�ڹ̵�','��ƻ��� �ڱ�ۿ� �𸣴� �׳�. ���ϰ� ��ƾ� õ�� ���ٴ��� �� �ݴ밡 �Ǿ� ���ȴ�!
 ���� ������ �� �÷��̽��� ���� ����, ����õ�� ������Ʈ �ϳ� �� ��!','https://youtu.be/QS-pa8LJZrk');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (20,0,'�����Ӹ�-��-����2.jpg','���� �Ӹ� �� ���� 2',4.4,'2018','ĳ����','12��','10','���̶� ������Ŷ','���̹̺��� �Ƴ�Ƽ, ������ ���ӽ�, R.H.�轼','���','���� ����ظ����ʴ� �ʷ�������. ���ο� �ι����� ����� �Բ�, �ҳ�� ����� ����� ������ �������� ������ �� �� �� �ڶ󳭴�.
 ���� �������� �װ�����.','https://youtu.be/xchO4ouHRlE');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (21,135,'�����Ӹ�-��-����3.jpg','���� �Ӹ� �� ���� 3',4.3,'2020','ĳ����','12��','10','���̶� ������Ŷ','���̹̺��� �Ƴ�Ƽ, ������ ���ӽ�, R.H.�轼','���','���� �� Ŀ����Ʈ �������� �ʷ����ؿ� ����߶��� ���� ���� �Ȱ� ���������� ���� �׵��� ����� ���� �系���̿���.
 �ҳ�� ����� ������ �����߰Ǹ�!','https://youtu.be/KRbFFEWBVn0');
REM INSERTING into SCOTT.PG_DRAMA_REVIEW
SET DEFINE OFF;
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,1,'damdadidam','������ źź�ؼ����� ù����� ����.',to_date('20/06/15','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,2,'blue0505','������ �ƽ��򺸴� ������ ���Ⱑ �ִ� ��ź�� �Ǵ�.',to_date('20/05/22','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,3,'red0505','1ȭ�� ���� ���� ����� �ߵ����� ����ɴϴ�.',to_date('20/04/12','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,4,'jasmine77','�ι� �ɸ����簡 �Ҹ���ġ���� ������̴�.',to_date('20/01/11','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,5,'ariel75','�ҷ��� �ٷ�� ������ �� �ι����� ġ���� �ɸ��� �� �׷��´ٰ� �����Ѵ�.',to_date('20/03/06','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,6,'belle74','��Ÿ���� ������ �������� ȥ��.',to_date('20/03/15','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,7,'purple0505','�ȱ׷��� ����ѵ� �������� ȱ������ �ξƴ���',to_date('20/02/18','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,8,'blue0505','ȣ���ִ� �߳⿩������ ��ǰ�ʰ� ����� ���������ϴ� ������ ���ڶ��..',to_date('20/05/22','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,9,'red0505','�̺꿡 ���Ĺ��� ����� �׷� ����ڿ� ���Ĺ��� ��... å����...',to_date('20/04/12','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,10,'jasmine77','���� ������ �ٷ��Դ� ��� �� ���� ����',to_date('20/01/11','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,11,'ariel75','���� 10�� ���� �������ȴ� ���� ����� ������',to_date('20/03/06','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,12,'belle74','������ ���Ǻ��� ���� ����ں��̶��� ���� �� ����',to_date('20/03/15','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,13,'purple0505','Sorry Baby',to_date('20/02/18','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,14,'snowwhite23','���糪, ����� �ŷ����� ������ ������ ���� �������н�.',to_date('20/02/19','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,15,'cindy43','�ן��!!! ���� Ȧ!!!!!!!!!!',to_date('20/06/10','RR/MM/DD'));
REM INSERTING into SCOTT.PG_MOVIE
SET DEFINE OFF;
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (524,'�̽� �䷹�׸��� �̻��� ���̵��� ��','movie_image_2__111.jpg','15�� ������','115��','�� ����, ���� ���� ������ �̽��͸� ��Ÿ��!
�Ҿƹ����� ������ �ܼ��� �i�� ������ũ�� �� �ð��� ���� ����� ���� ��а� �����Ѵ�.
 �ð��� �����ϴ� �ɷ��� ���� ���̽� �䷹�׸��� �� �׳��� ��ȣ�Ʒ� ���� �ݺ��Ǵ� �Ϸ縦 ��� ��Ư���� �ɷ��� ���̵顯,
 �׸��� �׵��� ����ϴ� ������ �ʴ� ������ �� ���ҷΰԽ�Ʈ��
 �̽� �䷹�׸��� ����ũ�� ����� ���̵��� ��Ƴ��� ���� ���ҷΰԽ�Ʈ�� �� �¼��� �Ѵ�.
','�� ��ư','���� �׸�(�䷹�׸�), ���̻� �����ʵ�(����ũ), �繫�� L. �轼(�ٷ�)','��Ÿ��,����,���','�̱�','2016',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (544,'It','movie_image_1.jpg','15�� ������','115��','���̵��� ������� ����, ���װ͡��� ��Ÿ����
���ΰ� ��������� �̻��ϰ� ���� ����� ������� ����, �� ���� ��� �� ���̹踦 ��� ���� ������ �������.
 �� ���� ������ Ŭ���� ģ����� �Բ� ������ ã�� ������, 27�⸶�� ���� �������ϴ� ���� ����� �� ä ���̵��� ��ƸԴ´ٴ� ���װ͡��� ���� ǳ���� �� �߿����� ������� �׵� �տ� ��Ÿ���µ���
 ���� ģ������ ������ �̰ܳ��� ���װ͡��� �¼� ������ ����� ���̵��� ã�� �� ������?
','�ȵ巹�� ���ÿ�Ƽ','�� ��ī������(��� ������),���̵� ������(��)','����','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (546,'����Ʈ �ƿ�','movie_image_2_9.jpg','15�� ������','81��',' �˰��� ��� �� �� ���ڴ� ���� ������ �Ǻΰ� Ÿ���� ������ ���� �ΰ� �ִ� ������ ��� ģ�� ���ֳ̾�����,
 ���絵 ���� �翡�� �Բ� ��� �ִٴ� �� �˰� �Ǵµ���
','���̺�� F. �������','�׷��� �ȸ�(����ī), �ٸ��þ� ���� ���ϸ�','����','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (534,'������ �ɸ� ���','movie_image_1_5.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (701,'������','movie_image_4_51.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (556,'��','movie_image_3_8.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (568,'��Ž�� ��ī��','movie_image_3__15.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (564,'���� ��Ʈ������','movie_image_3__5.jpg','12�� ������','81��','��� ���� �ʿ���, ����� ���� ������ ����ΰ� �´�!
������ ���� ������ ���� õ�� �ܰ��ǻ� ������ ��Ʈ������(���׵�Ʈ �Ĺ���ġ)��.
 ������ ����� �ɰ� ã�� �� ������ �����μ�Ʈ ��(ƿ�� ����ư)���� ���� ������ ������ ������ �ɷ��� ��� �Ǹ鼭,
 ��� ���� �ʿ��� �ְ��� ����η� �ŵ쳪�µ�...','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (548,'�� ����','movie_image_2_16.jpg','15�� ������','81��','�׷�Ÿ(�η� ����)�� ��ο� ���ſ��� ��� �� ����� �ϱ� ���� �ܵ� ������ �����ÿ� ����� ����.
 �׷��� ��κ�(�� ��ư, ���̾Ƴ� �ϵ�ĳ��)�� �Ƶ� �������� �Ұ��� �� �ҳ� ����.
 �峭�̶�� �ǽɰ� �޸� �κδ� �ʹ��� ������ �µ��� ������ ���ϰ�, ������ 10���� ��Ģ�� �� ���Ѿ� �Ѵٰ� ����� �� ������ ������.
 �����ÿ� ���� ������� �ܵ��� ���� �� �׷�Ÿ�� �ڲٸ� �Ͼ�� ������ ��ǵ��� ������ ���� ������ ����ִٰ� �ϰ� �Ǵµ���
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (558,'���˵���','movie_image_3_13.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (559,'�λ���','movie_image_3_13.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (566,'�г��� ����: �𸮹�Ƽ��','movie_image_3__7.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (525,'����ϰ� �ֽ��ϱ�','movie_image13.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (547,'���Ϸ�Ʈ ��','movie_image_2_15.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (571,'�Ű��Բ�-�˿� ��','movie_image_2_41.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (561,'����Ƹ�','movie_image_3__2.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (639,'�˶��','movie_image_4__14.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (541,'��ȭ, ȫ��','movie_image_5.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (500,'�ٸ��� : �������忡�� �� �ҳ�','�������̹������','12�� ������','115��','���ǰ� ��, ���ſ� ���簡 �����ϴ� ���� ���������塯
���� �� ������ �Ǹ��� �ô޸��� �����ߡ�(���ҹ�)�� 4�� ������ ����� ���� ����.
 �ɰ��� ȯû�� ȯ������ �ϻ� ��Ȱ�� ������� �׳��
 ��� ��, ������ ��� ��� �Ҿ���� ���Ÿ� ã�� 24�� �� ������ �ӹ����� ������ ã�ư���.
 
 ������ ���������塯 ������� ���� �ְ�,
 �װ����� �ź�ο� �ҳ� ��ȯ��(ȫ����)�� �׸� �����Ǵ� ���� �����á�(������),
 �׸��� �� �䳢�� ������ ��ٸ��� �ִ�.
 �� �� ���� ������ ��а� �Ҿ���� ����� ã�ƾ� �ϴ� ������ �������带 ������ �����ϰ�,
 ȯ�� �׻� �׳ุ�� �ٶ󺸸� �����ش�.
 �׸���, ��ħ�� 24�Ⱓ ���ε� ��Ȥ�� ��а� ������ �����ϰ� �Ǵµ���
','������','ȫ����(ȯ), ���ҹ�(����), ������(����)','��Ÿ��,����,���','�ѱ�','2015',7.35,null);
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (528,'���� ������ ���ϴ�','movie_image16.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (563,'ĸƾ �Ƹ޸�ī: �ú� ��','movie_image_3__4.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (545,'�ڷ�����: ����� ��','movie_image_2__16.jpg','��ü ������','81��','�λ��� ��ȭ �� ��ü�� ��ȭ�� ����. �Ƹ��ٿ� �ܸ�, ���� ������, ������� �뷡 �ؾ�, �׸��� ������� ��ȭ�� �� �ִ� �ɷ±���. ��ȭ ������ �ȴ޶�þƿ��� �ູ�ϰ� ��ư���. ������ ���� �ִٸ�, �鸶 ź ���ڸ� ���� ��ȥ�ϴ� ��. �ᱹ ���� �̷���� ���� ���� ������带 ������ �ǰ�, ���� ������ ��ȥ�ϱ�� ����Ѵ�. �׷��� ��ȥ�Ϸ� ���� ������ ���ط� ���忡 ��������? �ƴ� �ھ� ������. ���� ������ ��Ȧ �Ѳ��� ����.
  ������ ��Ȥ�� ���̰�, ����� ���ǿ����̶�� �� ���� ���� �ʴ� ������ ��ȥ ���� ��ȣ��. ��� ǥ���� �̸��Ϸθ� �ϴ� �׿��� ����� �ĸ԰� �� �� ���� �̻���(?) ���ڰ� ��ݾ��� ��Ÿ���� �ڲ� ��� ���� ������ ���� ���(?)�� �����. ��¥ ��ȭ�ӿ��� �� ���ڶ�� ���� ���������� �ʹ�.
"
','�ɺ� ����','�ٸ� �ص����(�������� ��Ҹ�), ���̹� �ƴ㽺(����), ��Ʈ�� ����(�ι�Ʈ �ʸ�)','���/�θǽ�','�̱�','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
REM INSERTING into SCOTT.PG_NOTICE
SET DEFINE OFF;
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (1,'������A','5�� 4�� ���� �ö�� ��ǰ','�̹� �ֿ��� �ö�ְ�� �Բ� �Ͻ� �� �ֵ��� ���ο� ��ǰ�� �غ��߾��. 
� ��ǰ���� �߰��Ǿ����� Ȯ���غ�����. �αٵα�!

 �̹� �� �ָ��� ���� ���� 
�峪�� X ����ȣ �ֿ�! ���ƿ� �̱�, ���¼ַο� �ٸ����� ��ȥ �� �ٽ� ����� �����ϴ� �׵��� ���� ���� ���ڡ��ѹ� �� ���ǿ�����
[WATCHA EXCLUSIVE] �η��� ������ �����Ϸ� �� ��, ǻó�� �� ���� ����! SF ��Ÿ�� �ڹ� ����ι���ǻó�� ���� 3��
����ÿ �ƾƴ㽺 X ����ÿ ������ �ֿ�, ������ ������ ��ȸ���� ���θ� ������ ����ߴ� �� ������ ���� ���丮, ���� �̰����ۡ��𼭺��𽺡�
����ź���� �б��� ������� �����̶󡡡��� �̹�ȣ X �ڽ��� X ���� �ֿ�, (�� ŷ) ������ �۰��� ù ����ƾ ��󸶡�����ڵ页
���̻� �����ʵ�, ���̸� ��� �ֿ�! ������ �� ����б��� ������� �������� B�� ���� ȣ�� �ڹ̵𡴽������Ͽ콺 ���
��â��, ������ �ֿ�! �����ڿ��� �ѱ�� ������ X ������ �θǽ��� ���� ������ �θǽ������� �����ء������� ��Ʈ�ʡ�
ȫ�� �ݻ��� ��ȭ�� ��� �߱��� ��ȭ�� ������, �߱��� �Ͽ��� �Ƿ� ü�踦 ������ ��ȭ ����ǡ����� ����� �ƴϴ١�
Oh �帲����~ �� ���� ���ҡ�������, �����, ������, ���ÿ� �� ��� ���� ���� ���̵��� ��� �⿬�Ͽ� ȭ���ƴ����帲���̡� ���� 2���� ����!
���� �۹��� �������� ���۽��� ������� � �л��� ��ȥ�� �ڹٲ� �� ����, (ȣ�� ���糪) ȫ�ڸ� �غ��ǡ���
������ X �缼�� �ֿ�, (���ͽ�) �ϸ��� �۰��� �ڽ��� �Ҽ��� ���� ���ȭ�ؼ� ȭ���� ���� �Խθ� ���� ��󸶡������ �µ���
ĭ��ȭ�� �ɻ������� ������, ��ȥ�� �յ� �κ� ���̿��� ��ó�ް� Ȧ���� ����� �ҳ��� �̾߱⡴���긮����
 �� ��ȭ 37��, TV�ø��� 38�� (���Ǽҵ� 804��)

�������� ������ ���� ��ǰ, ���� ������ ã�� �־��.
�� ���� �������� ã�ƿðԿ� :)

�ö�ְ� �� �帲',to_date('20/06/03','RR/MM/DD'),'1',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (2,'������B','�ö�ְ� ����������޹�ħ ����','�ȳ��ϼ���. ������B�Դϴ�.

�ö�ְ� ����������޹�ħ �����  �Ʒ��� ���� �����Ǿ� �ȳ� �帮��, �̿뿡 �����Ͽ� �ֽñ� �ٶ��ϴ�.

1. ���� �������� : 2020�� 6�� 1��

2. ���� ���� ����
[���� �׸�]
(���� ��)
���������� �������� �� �̿����
[��Ź��ü �� ��Ź��������]
- NICE �ſ��� : �޴���, I-pin ����� ��������

(���� ��)
���������� �������� �� �̿����
[��Ź��ü �� ��Ź��������]
- (��) KCB : �޴����� ���� ����� ��������

[�߰� �׸�]
��̸� ���� ����������޹�ħ �߰�

����� ����������޹�ħ ���뿡 ���� ���ǻ����� ������ ���, �ö�ְ� ������(cs@plaminggo.com)�� ���� �ֽø� ģ���ϰ� �ȳ��� �帮�ڽ��ϴ�.
���� ���ϰ� �������� ���񽺷� ȸ������ ������ �����ϰڽ��ϴ�.

�����մϴ�.
�ö�ְ� �� �帲',to_date('20/06/03','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (3,'������B','5�� 3�� ���� �ö�� ��ǰ','�̹� �ֿ��� �ö�ְ�� �Բ� �Ͻ� �� �ֵ��� ���ο� ��ǰ�� �غ��߾��. 
� ��ǰ���� �߰��Ǿ����� Ȯ���غ�����. �αٵα�!

  �̹� �� �ָ��� ���� ���� 
����ȣ, ���ҹ�, ������, ���� �ֿ�! �����ô�, ������ �ܸ�� �پ �⿹�� ������ ����� ��� ���� ��ȣ�� ���� ���ÿ�~����浵�ɡ�
��ȿ�� X ������ �ֿ�, (ȣ�� ���糪) ȫ�ڸ� �غ�! �ͽ��� ���� �̸��� ����� Ʈ��츶 ������ ���θ� ������� �θ�ƽ ȣ�� �ڹ̵��ֱ��� �¾硵
��󿹼���� ��� ������! �Ѽ���, ����, �ż��� �ֿ� �� (��������)�� �迵�� & �ڻ� �۰� ���� �����ۡ��Ѹ����� ������
�峪��, �ż���, ������ �ֿ� �� ������� ��� (�Ƴ��� ��Ȥ) ����� �۰� ������! ���������� ������ Ȳ�ĸ� ����� �ѡ�Ȳ���� ǰ�ݡ�
�տ��� X �賲�� �ֿ�, �ƹ����� ���� ������ ���� ����� ���� �� ����. ������ �۰��� ���� 3���� (��Ȱ), (����), �׸�����
ȭ���� �׸�ü�� �߰ſ� ����̾߱�� ��� ������ �л����� ������ �����̰��ߴ� �߾��� ���� �ִ�?�������������� ��̡�
[���� �ѱ� ���, ����ȣ ������ ��� �ø���]
�����? ����G���� ����ȭ ��û�� 42% ��� �ø��� ��ǥ��! �۽��� X ������ X ������ ��ƶ�� ���꽺�丮��������ȭ��?
����� X ������ �ѷ� ��ǳ�� ����Ų ����Ʈ��! �Ͼ� ���� ������ ���̼����� ������� ����� �� ���, ����鸸 ���÷��� �Ʒ��ѡ��ܿ￬����??
 �� ��ȭ 78��, TV�ø��� 32�� (���Ǽҵ� 738��)

�������� ������ ���� ��ǰ, ���� ������ ã�� �־��.
�� ���� �������� ã�ƿðԿ� :)

�ö�ְ� �� �帲',to_date('20/06/03','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (10,'������B','6������ ���� ������ ������','
��í�÷��̿� �������� �����ϴ� �Ǹ����� ��û���� ��Ÿ���Ե� �� �����ϱ��� ��í�÷��̿��� �� �� �ִ� ���������Դϴ�.
�� ���� �������� ������ �� �ֵ��� ��� ����ϰڽ��ϴ�.

2020. 6. 1
�Ƹ��ٿ� ���(2015)

2020. 6. 5
����(1994)

2020. 6.7
�α׸���&�Ѷ� �߸�����(2012)
�α׸���&�Ѷ� ������ �ѷ��� ���(2014)
������ ����(2016)
�ٽ� ������(2015)
������ �Բ�(2015)
�����Ϸ��� �ܿﵿȭ(2016)
������(2012)

2020. 6. 8
���ڷ罺(2015)

2020. 6. 9
���� ���� : ����� ���� ���� �̾߱�(2014)
���� �κ�����(2011)
6��° ��(2000)

2020. 6. 15
����� �Ҽ�ó��(2012)

2020. 6. 17
Ǫ�� ��ö�� �Ƹ������� �����ǡ��Ƹ��� ��١�DC(2014)

2020. 6. 18
�� Ÿ��(2014)

2020. 6. 22
��Ʈ��������(2016)

2020. 6. 25
��Ʋ�� ���̽���(2017)

2020. 6. 27
��Ŀ��Ʈ(2012)
����(2015)

2020. 6. 30
��Ʈ������ �� �ȼ�(2006)
�Ƹ޸�ĭ ��Ƽ(1999)
���� �̽İ� ���� 4(2014)
WORKING!!! 3��(2015)
���� ESP(2014)
������ ����ģ��(2017)
7O3X -0.01���� �ο�(2017)
�������� ��������(2017)
����� ������(2017)
������ RELOAD BLAST(2017)
ù ����(2017)
������â ������� AXZ(2017)
�����ҳ� 4��(2017)
�ð��� ������(2017)
sin �ϰ� ���� ����(2017)
�ø��ø� ���尡(2010)
�ø��ø��� �����̾߱�å(2016)
���̵� �� ���(2017)
����� ����(2013)
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (9,'������B','6�� 3�� ���� �ö�� ��ǰ','
�̹� �ֿ��� ��í�÷��̿� �Բ� �Ͻ� �� �ֵ��� ���ο� ��ǰ�� �غ��߾��. 
� ��ǰ���� �߰��Ǿ����� Ȯ���غ�����. �αٵα�!

 �̹� �� �ָ��� ���� ���� 
[WATCHA EXCLUSIVE] [������ �ֺε�] �۰� X [500���� ���] ����, �ô� �ʿ� �ڹ� ġ�� ���αء����� ��� ų��
���� ���� Ȳ�������� ������! ¥�ı����� ����� ��� ����������? �޽� ������ ���ڸ��� �Բ� �����ϼ���!������桵
���� �濵���� �ֽ� ���� ����! ���Ӱ� ���ƿ� ���� �߻� ���� �����̾�Ƽ��1�� 2�� ���� 4�������������� �� ���Ǽҵ� �߰� ����!
���ں� ���丣 X Ŭ���� ���� �ֿ�, ���Ǹ� ��Ǯ���ٰ� ����ŷ ���ϱ� ������ �׷���, �Ҹ� ���� ���� ������������ �����ڡ�
���� ���� X �ٴϿ� ����Ŭ���� �ֿ�, �̱��� ����� õ�� �۰��� �׸� ���� ġ���� ������ �̾߱⸦ �׸� ��ȭ ��ݡ�ų ���� �޸���
�����, �̽±� �ֿ�! ������ ��� ���Ŀ� ������ ���� �񸮸� ����ġ��! ���ۺ� 250�� ����� �������� �����ء��谡���塵
[�ǾƴϽ�Ʈ] ���̵帮�� ��ε� �ֿ�, �������� ���� �ӿ��� ��ó���� ������� ������ ������ ���Ȱ� ġ���ϴ� ������ �׸�������ġ��Ʈ��
����� �ֿ�, [�������� ����] ���ν�PD�� [����� ��] �ȱ�ȣPD�� ���� ������ �����̵� ��󸶡��̼���İ��
�ȳ�! ������~ �� ���� �ٸ鼭 ���� �鷡~��[��� ����]�� ȣ�Ҵ� ����簡 ������ 1, 2��� �Բ� �߾￡ ��ܺ����䡴������ ������ 1-9�⡵
����� X ������ X ������ �ֿ��� �θǽ� ��Ÿ�� ���, [���� ��Ҹ��� ���] ������ �۰��� �����ۡ������ ��� ���̿���
 �� ��ȭ 36��, TV�ø��� 41�� (���Ǽҵ� 681��)

�ֱ� �� �ް� ���� �ö�� ��ǰ
���κ��� ���衵, ����浵�ɡ�, ���ֱ��� �¾硵, ���Ѹ����� ������, ��Ȳ���� ǰ�ݡ�, ����, �������������� ��̡�, ��������ȭ��, ���ܿ￬����, ���츮����, ������ ��Ҹ��� �����, ��ĥ�� ���ó��页, �����۸��� ���ƿԴ١�, ���ݷ�Ʈ��, ����ũ�� ���硵, ���������� ���Ĵ硵, ���Ƴ��� ��Ȥ��, ���װų� Ȥ�� ���ڰų���, �����θ��� ��꡵, ���ν������� ����页, ���Ѷ�, ������ ���ν� ģ����, ����¼�� �߰��� �Ϸ硵, ��Ÿ¥: �� ���̵� �衵, �������� ȭ�š�, ���� �ա�, ���������� ���Ρ�, ���豺��, ����Ž�� �ڳ���, �����ֽô롵, ������, ����, ���� ������ ���ڡ�, ��Ǫ�� �ٴ��� ������, ������������, ������ ���� - ������� ����, ���׵��� ��� ����, ���� �ܿ�, �ٶ��� �д١� ��
 �� ��ȭ 232��, TV�ø��� 180�� (���Ǽҵ� 4364��)

�������� ������ ���� ��ǰ, ���� ������ ã�� �־��.
�� ���� �������� ã�ƿðԿ� :)

��í�÷��� �� �帲
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (8,'������A','�ö�ְ�, ũ��ĳ��Ʈ ��� ����!','
���� ��ٸ�����? �˾ƿ�...
���� ��í�÷��̿� ũ��ĳ��Ʈ ����� �߰��Ǿ����!

�ö�ְ� ���� ������Ʈ �Ǵ� ���� ��ȭ, ��󸶵��� ���� ũ��ĳ��Ʈ�� TV������ ������ ������ ������ :)
(ũ��ĳ��Ʈ�� TV�� HDMI ��Ʈ�� ������ ����ϴ� ��ġ��, ũ��ĳ��Ʈ�� ���� �ڼ��� ������ �̰��� ���� Ȯ���غ�����. Google Cast ����� �ִ� Android TV ���鿡���� ����� �� �־��.)

ũ��ĳ��Ʈ�� �̿��ϱ� ���ؼ� �ö�ְ� �ֽ� �������� ������Ʈ�ϼž� �ؿ�. 
������ �� ����, "������Ʈ" ��ư�� ��ܿ� �ִٸ� ������Ʈ ���ּ���.

����, ū ȭ�鿡�� ���� ǳ���ϰ� ��⼼��.
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (7,'������A','[PlamingGo EXCLUSIVE] ������ ��� ų���ö�ְ� �ܵ�����!','
�������� ��ȥ���� �δ�!��
��500���� ��ӡ������� �������� �ֺε页�۰��� �׸� �ô� �ʿ� �ڹ� ġ����

�ϳ��� ��, �� ���� ����, �� ���� ����

���״� �ٽ� �� �翡 ���ƿ� �ž�"
1963�� �����ó ���� ��, ������ �ٽ� ������� ���� �����࿡�� ���� �����ϴ�.

���޼ҹ����� ���Ƴ��� ��!��
1984�� �米�� ���� �ø�, ���� ����� ģ�� �Ƶ��� ���Ӿ��� ���� ���̿��� ��ο� ������.

���츮�� ���� �̴�� ��������?��
2019�� ���ڿ��ָ� ���� ���Ϸ�, �� ����ģ���� ���� ��ƺ��ڴ� ������ ���ȿ� �ǽ��� ��Ʈ�� �����Ѵ�.

��ȥ ��� ������ ���� �� ������ �̾߱�,
������ ��� ų���� ���� �ö�ְ��� ����������!

�ö�ְ� �� �帲
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (6,'������A','�ö�ְ� �ڸ� �̽��� ������ �������� ����帳�ϴ�.','
�ȳ��ϼ���, �ö�ְ����Դϴ�.

�ֱ� �߻��� �ڸ� �̽��� ���� ȥ���� �Ǹ��� �������� �е鲲 �������� ����帳�ϴ�. �� ���� �ö�ְ� �����е鲲 ������ ��Ȯ�ϰ� �˸��� ����帮���� ������ �ø��ϴ�.  

�ö�ְ�� ������ �Ǹ��簡 ������ ���� �ڸ��� ����մϴ�.

2020�� 5�� 26��, ������� ������ ���� Ư�� ��ǰ�� �ڸ��� ����� �ڸ����� ���ε�Ǿ� ������ �߰��Ͽ����ϴ�. Ȯ�� ��� 2016�� �ö�ְ� ��Ī ���, �˼� �������� ���� ������ �ڸ��� �׽�Ʈ�ϴ� �� ����� �ڸ����� �߸� ���ε� �� ������ Ȯ���Ͽ����ϴ�. �̿� �ش� ��ǰ�� ���񽺸� �ٷ� �ߴ��ϰ� �ڸ� ��ü �۾��� �����ϰ� �ֽ��ϴ�. ���� ���� �ñ⿡ ���ε� �� ��ǰ���� ��˼��� ���, �ش� ��ǰ �ܿ��� ��� �����ڸ��� ���� Ȯ���Ͽ����ϴ�.

�ö�ְ�� �������� ����ϴ� �������� ���� ���� ȯ�濡�� ��ǰ�� ������ �� �ֵ��� ����ؾ� �ϸ�, �ǰ��� ������ �Һ�ȭ�� ����� ���� �ּ��� ���ؾ� �ϴ� ���Դϴ�. �׷����� �ұ��ϰ� �̿� ���� �Ǽ��� ���� �е鲲 �Ǹ��� �Ȱܵ�� �ٽ� �� �� �������� ����帳�ϴ�.

�̹� ����� �ܼ��� ����� ��ĥ ������ �ƴ϶�� ����� ����� �����ϰ� �ֽ��ϴ�. ���� ��� ������ ���� �Ʒ��� ���� ��ġ�� ���� �����Դϴ�.

1. ���� �ڸ� Ȯ�� ������ ��ȭ�ϰ� �������� �ڸ��� ǰ�� ����� ���� ����ϰڽ��ϴ�.
2. �ö�ְ��� ���� ���� ��� ��ǰ�� ���� ö���� ���� ���縦 �����ϰڽ��ϴ�.

������ �Ǽ��� ���� ���� �е鲲 �Ǹ��� �帰 �� ����帮�� ������ ���� ���� �������� ����帳�ϴ�. �����ε� �� ���� ȯ�濡�� ��ǰ�� �����Ͻ� �� �ֵ��� �ּ��� ���� ����ϰڽ��ϴ�.

�����մϴ�.
�ö�ְ��� �帲',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (4,'������C','5������ ���� ������ ������','
�ö�ְ� �������� �����ϴ� �Ǹ����� ��û���� ��Ÿ���Ե� �� �����ϱ��� �ö�ְ��� �� �� �ִ� ���������Դϴ�.
�� ���� �������� ������ �� �ֵ��� ��� ����ϰڽ��ϴ�.

2020. 5. 3
��ٿ� �� ����(2002)
������ ����(1992)
���ǿ�(2014)
������(2014)

2020. 5. 11
��� ����(2016)

2020. 5. 13
���ڷ� ����(1977)
�뽺�ٽ��� �߾�(1994)
������ ���Ͽ� ���� �︮��(1943)
���� ����(1974)
���׸�(1987)
������ ���� �ΰ�(1981)
�������� ����(1990)
�������� �߾�(1990)
�г��� ����(2007)
�극�巹��(1983)
��ũ��(1996)
�ƿ����̴�(1983)
�˷����� ����(2003)
�̽������� ���� ����(1981)
�� ������ �⺴��(1959)
ŷ ����(1990)
�ý�(1998)
�Ķ�븻 ��Ƽ��Ƽ(2007)
�����Ƕ�(1994)
�ҷ��� 4(1988)
�ҷ��� 7 - H20(1998)
��� ��(1958)
���� ������(1959)

2020. 5. 15
û�Ό��(2013)

2020. 5. 17
����Į����(2006)
�ܸ�(1990)

2020. 5. 19
ĥ�己 ���� ��(2006)
ų���� ���𰡵�(2017)

2020. 5. 20
��ǳ�� ġ�� �㿡: ��� ģ��(2012)
�״�:������ ����(2014)
��������#0(2014)

2020. 5. 22
���� �̵峪��(2013)

2020. 5. 24
��ȣ�ñ�(2015)

2020. 5. 29
�����ǿ� �� ����(2013)

2020. 5. 30
�õ��Ͼ��� ���(2014)
�Ÿ��� �ƴ� ����(2010)
�Ÿ��� �ƴ� ���� 2��(2011)
����Ʈ(2013)

2020. 5. 31
���־� ������Ʈ(1995)
ī����� ����(1995)
�λ��̵� ��(2010)
�������(2011)
�����Ʈ ��Ÿ�� ����������(2016)
��ũ���� RPG(2017)
ȣ����̿� �丸 ������(2017)
���� ��!(2010)
������ ������(2013)
���� �������(2012)
���긮���� ���Ӷ�����(2018)
�Ǿ�TV part1(2018)
�׿���TV part1(2018)
�� �޸���(2006)
���̾� ��ī��(2012)
1944 ������(2014)
����(2013)
����� ���(2012)
���� ���� �� Ÿ�� �� �Ƹ޸�ī(1984)
�Ͽ콺 ���� ��ũ(2014)
���ø���(2008)
ģ���� ��(2007)
�Ǹ��� ���� ������ �˱� ����(2007)
���ʵ� �� ���� 3D(2009)
�����(2001)
����� 2(2003)
ĸó�� ���(2012)
��Ű�� (1988)
�����϶� �Ǻ� : �����ڵ��� �Ǻ�(2018)
�����϶� �Ǻ� : ��ü�Ǻ� Ÿ��ź(2018)
�����϶� �Ǻ� : �� �ϳ��� �Ǻ�(2018)
�����϶� �Ǻ� : �ְ���ü Ʈ����ź(2018)
�����϶� �Ǻ� : Ʈ����ź �����޺�(2018)
�����϶� �Ǻ� : ��ǳ��� ��ŸƮ��(2018)
�����϶� �Ǻ� : �±����� K(2018)
�����϶� �Ǻ� : ī��� �׶�Ŭ(2018)
�����϶� �Ǻ� : ������ ��� �Ⱑ����(2018)
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (5,'������A','
�ȳ��ϼ���. �ö�ְ��Դϴ�.
�ö�ְ� ���� ����� �Ʒ��� ���� �����Ǿ� �ȳ� �帮��, �̿뿡 �����Ͽ� �ֽñ� �ٶ��ϴ�.','1. ���� �������� : 2019�� 12�� 16��

2. ���� ���� ����
    �� 2�� ����� ���� (����) 
    1)ȸ��: �ö�ְ� ��� �� �� ����� �����ϰ� ������ ������ �ڷμ�, ȸ�簡 �����ϴ� ���񽺸� ���Ͽ� ����� �����ϴ� ������ ���������� �̿��� �� �ִ� �ڸ� ���մϴ�. ��, ȸ���� ������ ������ ���� ���� �������� �Բ� �̿��� �� �ִ� ���񽺿� ������ ��쿡�� �� ���� ������(���� ������ ��������)�� �����ϴ� �ǹ̷� ���� �� �ֽ��ϴ�.
    
    �� 5�� ���α׷� ��ġ �� ������ ���� (����) 
    - ȸ��� ���� ���񽺸� �����Կ� �־� �ʿ��� ��� ȸ������ ���ø����̼� �� ������ ���α׷��� ��ġ �� ������Ʈ�ϵ��� �ȳ��� �� ������, ȸ���� ������ ���� ��� �� ��ġ �� ������Ʈ�� �ź��� �� �ֽ��ϴ�. �ٸ�, ȸ���� ���ø����̼� �� ���� ���α׷��� ��ġ �� ������Ʈ�� �ź��ϴ� ��� ���� �̿��� ���ѵ� �� �ֽ��ϴ�.
    
    �� 6�� ���� �̿��� ����� �䱸 ���� (����) 
    <���� �̿� �ʼ� ���>
    1)��ǻ��(PC)
    ���Ἥ�񽺴� �Ʒ� ������ �������� �̿��� ������ Windows, macOS, Linux ���� OS���� �����մϴ�.
    - ���� ��������: Chrome, Edge, Firefox (��� �������� �ֽ� ���� �������� ���� �� �����մϴ�)
    2)����� �ܸ���(����Ʈ��, �º� PC)
    ���Ἥ�񽺴� ���� �ֽ��� ���� ���� OS���� ���� �� �����ϸ�, �ּ� ���� OS ���� ������ ������ �����ϴ�.
    - Android: 4.1 ���� �̻�
    - Android TV: 5.0 ���� �̻�(�Ϻ� ���� ������ ������ ���� ������ ���ܵ� �� �ֽ��ϴ�)
    - iOS: iOS 10.0 ���� �̻�
    3)����Ʈ TV
    - 2016������ ������ �� ���� ��õ� �Ｚ ����Ʈ TV
    - 2016������ ������ �� ���� ��õ� LG ����Ʈ TV
    4) ��Ÿ
    - ũ��ĳ��Ʈ(1/2/3����, Ultra)
    
    �� 6�� ���� �̿��� ����� �䱸 ���� (�߰�)
    - ���� ������ ȭ���� ȸ���� ������ �̿��, ����ϴ� ����̽�, ���ͳ� ���� �ӵ�, ���ͳ� �뿪�� �� �پ��� ������ ������ �ޱ� ������ ��� �������� ������ HD, Full HD, Ultra HD, HDR ���� ȭ���� �����Ǵ� ���� �ƴմϴ�.
    
    �� 8�� ���� ���񽺿� ����ȸ�� (����)
    - ������(��ȭ, TV ���α׷� ��)�� �Ǹ��� �����ϰ� �ִ� ����, ��ü, ����(���Ǹ��� �) ���� ����� ü�� ���� �� ���� ����� ����, ���Ǹ��� ��� ���� ��û�� ���� �������� �̿��� ���ѵǰų� ����� �� �ֽ��ϴ�. ȸ��� ���Ǹ��� ��� ��û�� �ְ� �Ǵ� ���, �ش� ��û�� ���� ���� ���񽺸� �����ϴ� ����� ����, ȸ���� �̿� ���� ��� �� ��, ���� ��� ȸ�� �� ���� ������ �� �ֽ��ϴ�.
    
    �� 13�� ���Ἥ�� ���� ����, ��� ���� �� (����)
    - ȸ���� �̹� ����/������ ���� ���񽺴� ȸ�簡 ���� ��å�� ���� �����û�� ��� ��� ���� Ȥ�� 1���� ���� ������ �� �� �ֽ��ϴ�.
    - Ÿ�� ���� Ȥ�� ���޸� ���� ���� ������ �̿���� �����Ͽ� ����ϴ� ��� �ش� Ÿ���� ��å�� �����ϴ�.
    
    �� 13�� ���Ἥ�� ���� ����, ��� ���� �� (�߰�)
    - ��� ������ ���, ȸ���� ���� ��û�� �̿������ ��� ��ü�Ǹ�, ���� ����/������ �̿���� ���� �Ⱓ�� ���� ��û�� �̿���� ������ ��ʹ���Ͽ� �̿� �Ⱓ�� �����Ǹ� ���ο� �����ֱⰡ ���� �˴ϴ�.
    - ���� IAP(In-App-Purchase)�� ��� ������ ���� ��å�� �����ϴ�.
    
    �� 18�� ����������ȣ (�߰�)
    - ȸ�� ������ ���� �������� ���� �̿� �������� ȸ�� ������ ���������� �� �� �ֽ��ϴ�.
    
    ����� �ö�ְ� ���� �̿��� ���뿡 ���� ���ǻ����� ������ ���, �ö�ְ� ������(plaminggo@naver.com)�� ���� �ֽø� ģ���ϰ� �ȳ��ص帮�ڽ��ϴ�.
    
    ���� ���ϰ� �������� ���񽺷� ȸ������ ������ �����ϰڽ��ϴ�.
    �����մϴ�.
    
    �ö�ְ� �� �帲
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
REM INSERTING into SCOTT.PG_QNA
SET DEFINE OFF;
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (1,'dwm8895','�����÷��� ������ ��� ��ġ�ϳ���?','						
������ �ٿ�ް� ũ�ҿ��� ������ �����ϴµ�
������ ����ٰ� �ȳ����׿�
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/03','RR/MM/DD'),'1',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (12,'adawd12','���� ������ ��� ��ġ�ϳ���?','
������ �ٿ�ް� ũ�ҿ��� ������ �����ϴµ�
���������� �߾ȵǴ°� �����ϴ�...
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (13,'dlwns96','�α����� �ȵɽÿ��� ��� ��ġ�ϳ���?','
�α����� �õ��ϴµ� ȭ���̷α����� ȭ������ �Ѿ�� �ʳ׿�..
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (14,'faf51234','ȸ��Ż��� ��� �ϳ���?','
ȸ��Ż�� �ϰ������ ����ϳ���
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (35,'nst144','�ڸ��� �ȳ����µ� ��� ��ġ�ϳ���?','
������ �ٿ�ް� ũ�ҿ��� ������ �����ϴµ�
�ڸ��� �ƿ� �ȳ��ɴϴ�.
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (36,'asgeweg','�̿�� ��ü�� ��� �ϳ���?','
�̿�� ��ü�� �ϰ������
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (37,'aerha3445','�������ϴ� ��ȭ�� ���µ� �߰��Ҽ��ֳ���?','
�������ϴ� ��ȭ�����µ�
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (38,'iesrr341','�ö�ְ� ������ �ɸ��� ���̵� ��õ�ϰ�;��','
������������ ������߰��ؼ� �ö�ְ� �� ���������� ���ڽ��ϴ�.
�ݿ����ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (39,'aeg2435','ũ�Ҹ��� �ٸ��������δ� ����� �Ұ��ϳ���?','
ũ���� �� ���ܼ� �ٸ��������� �����ϰ������
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (40,'4572aaas','��� ������ ��� ��ġ�ϳ���?','
�����ư�� Ŭ���ϰ� ����Ϸ��µ� ����̾ȵ˴ϴ٤Ф�
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (41,'6as2321','�������� ��� ����ϳ���?','
�ĸ��̶� �߸𸣰ڽ��ϴ�!
����� �˷��ֽø� �����ϰڽ��ϴ�',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
REM INSERTING into SCOTT.PG_USER
SET DEFINE OFF;
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (2,'damdadidam','dam1234567@!','damdadidam@gmail.com','�̱���','19950111',2,'01019950111',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (3,'blue0505','blue9605','blue0505@naver.com','������','19960505',1,'01091011121',to_date('20/06/02','RR/MM/DD'),'������',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (4,'red0505','red9605','red0505@naver.com','��ȫ��','19960505',1,'01031415161',to_date('20/06/02','RR/MM/DD'),'������',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (6,'purple0505','purple9605','purple0505@naver.com','������','19960505',2,'01071819202',to_date('20/06/02','RR/MM/DD'),'������',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (7,'white0505','white9605','white0505@naver.com','���Ͼ�','19960505',2,'01012223242',to_date('20/06/02','RR/MM/DD'),'������',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (8,'snowwhite23','snowwhite2312','snowwhite23@google.com','�鼳','19231221',2,'01052627282',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (9,'cindy43','cindy4307','cindy43@google.com','�ŵ�����','19430726',2,'01093031323',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (10,'aurora43','aurora4301','aurora43@google.com','���ζ�','19430129',2,'01033435363',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (11,'ariel75','ariel7512','ariel75@google.com','������','19751221',2,'01073839404',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (12,'belle74','belle7407','belle74@google.com','��','19740704',2,'01014243444',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (13,'jasmine77','jasmine7711','jasmine77@google.com','�ڽ���','19771108',2,'01054647484',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (0,'dlwns96','123123','dlwns7339@google.com','����','19960920',1,'01091887339',to_date('20/06/02','RR/MM/DD'),'�����̾�',0);
REM INSERTING into SCOTT.MPG_REVIEW
SET DEFINE OFF;
Insert into SCOTT.MPG_REVIEW (REVIEW_NUM,JOIN_CODE,MREVIEW_WRITER,MREVIEW_CONTENT,MREVIEW_RATING,MREVIEW_DATE) values (1,500,'����ۼ���','����ۼ�����',5,to_date('20/06/08','RR/MM/DD'));
Insert into SCOTT.MPG_REVIEW (REVIEW_NUM,JOIN_CODE,MREVIEW_WRITER,MREVIEW_CONTENT,MREVIEW_RATING,MREVIEW_DATE) values (20,524,'11','test file3',5,to_date('20/06/15','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Procedure RE_SEQ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."RE_SEQ" 
(
sname in varchar2
)
is
val number;
begin
execute immediate 'select '|| sname ||'.nextval from dual ' into val;
execute immediate 'alter sequence ' || sname || ' increment by -'|| val || ' minvalue 0';
execute immediate 'select '|| sname ||'.nextval from dual ' into val;
execute immediate 'alter sequence '|| sname|| ' increment by 1 minvalue 0';
end

/
--------------------------------------------------------
--  Constraints for Table PG_DRAMA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PG_DRAMA" ADD PRIMARY KEY ("CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PG_DRAMA_REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PG_DRAMA_REVIEW" ADD PRIMARY KEY ("BNO", "RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PG_MOVIE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PG_MOVIE" MODIFY ("MOVIE_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_MOVIE" ADD PRIMARY KEY ("MOVIE_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PG_NOTICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PG_NOTICE" MODIFY ("NO_NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_NOTICE" MODIFY ("NO_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_NOTICE" MODIFY ("NO_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_NOTICE" MODIFY ("NO_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_NOTICE" ADD PRIMARY KEY ("NO_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PG_QNA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PG_QNA" MODIFY ("QNA_NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_QNA" MODIFY ("QNA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_QNA" MODIFY ("QNA_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_QNA" ADD PRIMARY KEY ("QNA_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PG_USER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_PASS" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_MAIL" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_BIRTH" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_GENDER" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_LEVEL" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" MODIFY ("USER_STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."PG_USER" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MPG_REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MPG_REVIEW" MODIFY ("REVIEW_NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."MPG_REVIEW" MODIFY ("JOIN_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."MPG_REVIEW" MODIFY ("MREVIEW_WRITER" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."MPG_REVIEW" MODIFY ("MREVIEW_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."MPG_REVIEW" MODIFY ("MREVIEW_RATING" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."MPG_REVIEW" ADD PRIMARY KEY ("REVIEW_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PG_DRAMA_REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PG_DRAMA_REVIEW" ADD CONSTRAINT "PG_DRAMA_REVIEW_BNO" FOREIGN KEY ("BNO")
	  REFERENCES "SCOTT"."PG_DRAMA" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MPG_REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MPG_REVIEW" ADD FOREIGN KEY ("JOIN_CODE")
	  REFERENCES "SCOTT"."PG_MOVIE" ("MOVIE_CODE") ENABLE;
