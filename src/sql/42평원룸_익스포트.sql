--------------------------------------------------------
--  파일이 생성됨 - 월요일-6월-15-2020   
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
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (1,288,'부부의-세계.jpg','부부의 세계',4.4,'2020','한국','청불','16','모완일','김희애, 박해준, 한소희, 박선영, 김영민','스릴러','[무삭제판] 성공한 가정의학과 전문의이자 다정한 남편, 사랑스러운 아들까지 남부러울 것 없이 살아가던 선우. 
그러나 남편 태오의 외도를 알게 되면서 선우의 일상은 송두리째 흔들리기 시작한다.','https://youtu.be/WSSJNc97Qj0');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (3,5,'killing-eve-season2.jpg','킬링 이브 시즌 2',4.1,'2019','영국','청불','8','프란체스카 그레고리니, 리사 브륄만, 데이먼 토머스','산드라 오, 조디 코머, 피오나 쇼, 킴 보드니아','스릴러','범죄 심리에 병적인 흥미를 가진 영국 정보국 요원 이브, 청부 살인에 희열을 느끼며 살아가는 사이코패스 킬러 빌라넬.
 알 수 없는 집착에 사로잡혀 서로를 쫓기 시작한다.','https://youtu.be/XVTZhOLpXjI');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (4,233,'killing-eve-season32.jpg','킬링 이브 시즌 3',4.1,'2020','한국','청불','8','데이먼 토머스, 테리 맥도너, 섀넌 머피','산드라 오, 조디 토머, 피오나 쇼, 킴 보드니아','스릴러','스파이가 되고 싶었던 MI5 직원 이브는 책상 앞에 묶여 지루한 나날을 보내고 있었다. 
재능이 뛰어난 킬러 빌라넬은 이 폭력적인 직업이 선사하는 희열을 양분 삼아 살고 있었다. 
이 두 명의 대단한 여성이 서로에게 사로잡혀 서로를 쫓기 시작한다. 전형적인 스파이 액션 스릴러를 무너뜨리는 추격 게임이 펼쳐진다.','https://youtu.be/uJCxUaClpzE');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (5,204,'Extracurricular2.jpg','인간수업',4.5,'2020','한국','청불','10','진한새, 김진민','김동희, 정다빈, 박주현','스릴러','눈에 띄지 않게 살자. 학교 안에서는 성실하고 모범적인 오지수. 
학교 밖에서는 전혀 다른 얼굴로 살고 있다. 그가 위험한 불법 사업의 중심에 있다. 아무도 모르게.','https://youtu.be/vq9dP3w7H0w');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (6,158,'kingdom-season2.jpg','킹덤 시즌 2',4,'2020','한국','청불','6','김은희, 김성훈, 박인제','주지훈, 류승룡, 배두나','스릴러','도성 곳곳에 나붙은 참담한 괘서. 병환으로 쓰러진 왕이 돌아가셨다 한다. 
그동안 왕을 알현한 사람은 영의저오가 그의 딸인 중전뿐. 세자조차 알지 못하는 진실은 무엇일까.','https://youtu.be/7ecrESKwh_Y');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (7,126,'why-women-kill11.jpg','와이 우먼 킬',4.6,'2019','미국','청불','10','데이빗 그로스먼, 데이비드 워렌, 마크 웹','루시 리우, 지니퍼 굿윈, 커비 하웰-밥티스트','코미디','하나의 집, 3명의 여성, 3번의 살인! 현모양처 베스 앤, 사교계의 여왕 시몬, 다자연애를 즐기는 테일러. 
이들 유일한 문제는, 남편. 이혼보다 살인을 택한 아내들의 치밀한 계획이 시작된다.','https://youtu.be/zV2bT8r2cv8');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (8,0,'years-and-years3.jpg','이어즈&이어즈',4.5,'2019','영국','15세','6','사이먼 셀란 존스, 리사 멀케이','엠마 톰슨, 로리 키니어, 제시카 하인즈','SF','브렉시트 후의 영국, 기업가 출신 정치인 비비언 룩이 인기몰이를 하는 동안, 한 가정의 가족사가 해를 거듭하며 빠르게 펼쳐진다. 
우리가 미래에 관해 기대하고 두려워하는 모든 것이 여기에 있다.','https://youtu.be/9jLbW0CIt88');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (9,0,'you-season1.jpg','너의 모든 것 시즌 1',4.2,'2018','미국','청불','16','그레그 벌랜티, 세라 갬블','펜 배질리, 엘리자베스 레일, 빅토리아 퍼드레티','스릴러','마음이 끌리는 사람에게 다가가기 위해서라면, 무슨 짓이든 할 수 있다. 
위험한 매력의 소유자, 집착의 끝을 보여주는 남자. 그의 소름 끼치는 로맨스가 시작된다.','https://youtu.be/RTmzZ5ipCq4');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (10,0,'you-season2.jpg','너의 모든 것 시즌 2',4.3,'2019','미국','청불','10','그레그 벌랜티, 세라 갬블','펜 배질리, 엘리자베스 레일, 빅토리아 퍼드레티','스릴러','뉴욕의 서점 매니저이자 반듯한 독서가, 조. 그가 대학원생 벡을 만나 한눈에 반한다.
 하지만 훈훈했던 그의 첫인상은 잠시일 뿐, 감추어진 조의 뒤틀린 이면이 드러난다.','https://youtu.be/JPbJzCTWjCs');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (11,0,'the-politician.jpg','더 폴리티션',3.9,'2019','미국','15세','8','라이언 머피, 브래드 팰척, 이언 브레넌','벤 플랫, 기네스 펠트로, 제시카 랭','코미디','네가 어떻게 이럴 수가! 학생회장 선거에 강적이 나타난다.
 강력한 당선 후보였으나, 선거 전략을 바꿀 수밖에 없는 페이튼. 진솔해 보이게 도와줄 러닝메이트를 섭외한다.','https://youtu.be/zSj4Xm4raTg');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (12,0,'the-witcher.jpg','위쳐',3.5,'2019','미국','청불','8','로런 슈미트 히스릭','헨리 카빌, 애니아 철로트라, 프레이아 앨런','액션','블라비켄에 위쳐가 나타났다. 게롤트에게 적대감을 드러내는 사람들.
 그를 불러낸 마법사는 한 여인을 죽여달라 제안한다. 시리는 닐프가드가 공격해오자 성을 빠져나간다.','https://youtu.be/bjSnsUFPxLI');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (13,0,'doctor-poster-season1.jpg','닥터 포스터 시즌 1',4,'2015','영국','청불','5','톰 본','수란 존스, 버티 카벨, 클레어-홉 애쉬티, 조디 코머','스릴러','최고의 의사 젬마는 완벽한 삶을 살아가는 듯 보이지만 남편 사이먼의 외도를 눈치채고 고민에 빠진다.
 젬마와 사이먼을 둘러싼 갈등은 주변 인물들까지 파국으로 몰고 간다.','https://youtu.be/KCa9CL4Z0Dk');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (14,0,'doctor-poster-season2.jpg','닥터 포스터 시즌 2',3.8,'2017','영국','청불','5','제레미 로버링, 마이크 바틀렛','수란 존스, 버티 카벨, 톰 테일러, 조디 코머','스릴러','훌륭한 의사 젬마는 완벽한 삶을 살아가는 듯 보이지만 남편 사이먼의 외도를 눈치채고 고민에 빠지고,
 젬마와 사이먼을 둘러싼 갈등은 주변 인물들까지 파국으로 몰고 간다.','https://youtu.be/lQxTx8gfw8M');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (15,0,'friends1.jpg','프렌즈',4.8,'1994','미국','15세','240','데이비드 크레인, 마카 카우프먼','제니퍼 애니스톤, 코트니 콕스, 리사 쿠드로','코미디','오늘도 카페에 모여 앉은 친구들. 이혼으로 실의에 빠진 로스를 달래느라 다들 여념이 없는 이 때,
 웨딩드레스를 입은 여성이 카페로 달려든다. 어, 우리가 아는 얼굴이네?','https://youtu.be/BKkUiuAUluk');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (16,0,'종이의-집.jpg','종이의 집 파트 3',4,'2019','스페인','청불','13','알렉스 피나','우르술라 코르베로, 알바로 모르테, 이치아르 이투뇨','범죄','스페인 조폐국에 침입한 8명의 무장강도와 이들을 밖에서 지휘하는 천재 교수에게 위기가 닥쳤다. 긴 대치 상황으로 인질과 공범들은 지쳐가지만, 
과학 수사대와 경찰은 수사망을 좁혀오며 교수의 정체에 점점 가까워지고 있다. 과연 이들의 계획은 성공할 수 있을까?','https://youtu.be/Vm3qIH4nh3E');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (17,0,'stranger-things-season3.jpg','기묘한 이야기 시즌 3',4.1,'2019','미국','15세','8','숀 레비','위노나 라이더, 데이빗 하버, 핀 울프하드, 밀리 바비 브라운','공포','친구네 집에서 자신의 집으로 돌아가던 중 윌은 무언가 이상한 것을 보게 되고,
 윌이 있는 곳에서 가까운 정부의 비밀 실험실에서는 끔찍한 일이 벌어진다.','https://youtu.be/5doYRBh4kuA');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (18,0,'미란다-시즌1.jpg','미란다 시즌 1',4.1,'2009','미국','15세','6','줄리엣 메이','  미란다 하트, 패트리시아 호지, 톰 엘리스','코미디','사교적인 생활에 익숙하지 않고, 언제 어디서나 엉뚱한 실수와 사고를 일으키지만 친구들과 함께 쾌활하게 살아가는 미란다의 일상을 그린다.','https://youtu.be/zuBEHek67XY');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (19,0,'굿-플레이스5.jpg','굿 플레이스 시즌 4',4.3,'2019','미국','청불','16','마이클 슈어','크리스틴 벨, 테드 댄슨, 윌리엄 잭슨 하퍼','코미디','살아생전 자기밖에 모르던 그녀. 착하게 살아야 천당 간다더니 그 반대가 되어 버렸다!
 사후 세계의 굿 플레이스에 남기 위한, 개과천선 프로젝트 하나 둘 셋!','https://youtu.be/QS-pa8LJZrk');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (20,0,'빨간머리-앤-시즌2.jpg','빨간 머리 앤 시즌 2',4.4,'2018','캐나다','12세','10','모이라 월리베킷','에이미베스 맥널티, 제럴딘 제임스, R.H.톰슨','드라마','앤이 사랑해마지않는 초록지붕집. 새로운 인물들의 등장과 함께, 소녀는 사랑과 상실의 뼈아픈 성장통을 겪으며 한 뼘 더 자라난다.
 더욱 소중해진 그곳에서.','https://youtu.be/xchO4ouHRlE');
Insert into SCOTT.PG_DRAMA (CODE,HITS,IMG,TITLE,RATING,OPENDATE,NATION,AGE,EPI,DIRECTOR,ACTOR,GENRE,SUMMARY,TRAILER) values (21,135,'빨간머리-앤-시즌3.jpg','빨간 머리 앤 시즌 3',4.3,'2020','캐나다','12세','10','모이라 월리베킷','에이미베스 맥널티, 제럴딘 제임스, R.H.톰슨','드라마','나이 든 커스버트 오누이의 초록지붕에 생기발랄한 앤이 꿈을 안고 도착하지만 정작 그들이 기대한 것은 사내아이였다.
 소녀는 그토록 가족을 염원했건만!','https://youtu.be/KRbFFEWBVn0');
REM INSERTING into SCOTT.PG_DRAMA_REVIEW
SET DEFINE OFF;
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,1,'damdadidam','원작이 탄탄해서인지 첫출발은 좋다.',to_date('20/06/15','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,2,'blue0505','연출의 아쉬움보다 배우들의 명연기가 주는 감탄이 컸다.',to_date('20/05/22','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,3,'red0505','1화를 보는 순간 당신은 견딜수가 없사옵니다.',to_date('20/04/12','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,4,'jasmine77','인물 심리묘사가 소름끼치도록 사실적이다.',to_date('20/01/11','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,5,'ariel75','불륜을 다루고 있지만 각 인물들의 치열한 심리를 잘 그려냈다고 생각한다.',to_date('20/03/06','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,6,'belle74','판타지와 하이퍼 리얼리즘의 혼재.',to_date('20/03/15','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (1,7,'purple0505','안그래도 우울한데 괜히봐서 홧병나서 앓아누움',to_date('20/02/18','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,8,'blue0505','호감있는 중년여성에게 명품옷과 향수를 선물공세하는 연하의 여자라니..',to_date('20/05/22','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,9,'red0505','이브에 미쳐버린 빌라넬 그런 빌라넬에 미쳐버린 나... 책임져...',to_date('20/04/12','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,10,'jasmine77','내가 이제껏 바래왔던 모든 걸 담은 영드',to_date('20/01/11','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,11,'ariel75','시작 10분 만에 빠져버렸다 역시 산드라오 끝내줌',to_date('20/03/06','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,12,'belle74','조만간 에피병을 이을 빌라넬병이란게 생길 것 같다',to_date('20/03/15','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,13,'purple0505','Sorry Baby',to_date('20/02/18','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,14,'snowwhite23','옥사나, 빌라넬 매력적인 색감과 음향을 가진 사이코패스.',to_date('20/02/19','RR/MM/DD'));
Insert into SCOTT.PG_DRAMA_REVIEW (BNO,RNO,WRITER,CONTENT,REGDATE) values (4,15,'cindy43','테잌미!!! 투더 홀!!!!!!!!!!',to_date('20/06/10','RR/MM/DD'));
REM INSERTING into SCOTT.PG_MOVIE
SET DEFINE OFF;
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (524,'미스 페레그린과 이상한 아이들의 집','movie_image_2__111.jpg','15세 관람가','115분','올 가을, 세상에 없던 유일한 미스터리 판타지!
할아버지의 죽음의 단서를 쫒던 ‘제이크’ 는 시간의 문을 통과해 놀라운 비밀과 마주한다.
 시간을 조정하는 능력을 가진 ‘미스 페레그린’ 과 그녀의 보호아래 무한 반복되는 하루를 사는 ‘특별한 능력의 아이들’,
 그리고 그들을 사냥하는 보이지 않는 무서운 적 ‘할로게스트’
 미스 페레그린과 제이크를 비롯한 아이들은 살아남기 위해 ‘할로게스트’ 에 맞서야 한다.
','팀 버튼','에바 그린(페레그린), 에이사 버터필드(제이크), 사무엘 L. 잭슨(바론)','판타지,공포,멜로','미국','2016',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (544,'It','movie_image_1.jpg','15세 관람가','115분','아이들이 사라지는 마을, ‘그것’이 나타났다
살인과 실종사건이 이상하게 많이 생기는 데리라는 마을, 비 오는 어느 날 종이배를 들고 나간 동생이 사라졌다.
 형 빌은 ‘루저 클럽’ 친구들과 함께 동생을 찾아 나서고, 27년마다 가장 무서워하는 것의 모습을 한 채 아이들을 잡아먹는다는 ‘그것’이 빨간 풍선을 든 삐에로의 모습으로 그들 앞에 나타나는데…
 빌과 친구들은 공포를 이겨내고 ‘그것’에 맞서 동생과 사라진 아이들을 찾을 수 있을까?
','안드레스 무시에티','빌 스카스가드(페니 와이즈),제이든 리버허(빌)','공포','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (546,'라이트 아웃','movie_image_2_9.jpg','15세 관람가','81분',' 알고보니 어둠 속 그 여자는 빛이 닿으면 피부가 타들어가는 기이한 병을 앓고 있던 엄마의 어릴적 친구 다이애나였고,
 현재도 엄마 곁에서 함께 살고 있다는 걸 알게 되는데…
','데이비드 F. 샌드버그','테레사 팔머(레베카), 앨리시아 벨라 베일리','공포','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (534,'마법에 걸린 사랑','movie_image_1_5.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (701,'마음이','movie_image_4_51.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (556,'명량','movie_image_3_8.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (568,'명탐정 피카츄','movie_image_3__15.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (564,'닥터 스트레인지','movie_image_3__5.jpg','12세 관람가','81분','모든 것을 초월한, 역사상 가장 강력한 히어로가 온다!
불의의 사고로 절망에 빠진 천재 외과의사 ‘닥터 스트레인지(베네딕트 컴버배치)’.
 마지막 희망을 걸고 찾아 간 곳에서 ‘에인션트 원(틸다 스윈튼)’을 만나 세상을 구원할 강력한 능력을 얻게 되면서,
 모든 것을 초월한 최강의 히어로로 거듭나는데...','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (548,'더 보이','movie_image_2_16.jpg','15세 관람가','81분','그레타(로렌 코핸)는 어두운 과거에서 벗어나 새 출발을 하기 위해 외딴 마을의 대저택에 유모로 들어간다.
 그러나 노부부(짐 노튼, 다이아나 하드캐슬)가 아들 브람스라며 소개한 건 소년 인형.
 장난이라는 의심과 달리 부부는 너무나 진지한 태도로 인형을 대하고, 심지어 10가지 규칙을 꼭 지켜야 한다고 당부한 후 여행을 떠난다.
 대저택에 인형 브람스와 단둘이 남게 된 그레타는 자꾸만 일어나는 기이한 사건들을 겪으며 점점 인형이 살아있다고 믿게 되는데…
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (558,'범죄도시','movie_image_3_13.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (559,'부산행','movie_image_3_13.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (566,'분노의 질주: 언리미티드','movie_image_3__7.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (525,'사랑하고 있습니까','movie_image13.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (547,'사일런트 힐','movie_image_2_15.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (571,'신과함께-죄와 벌','movie_image_2_41.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (561,'아쿠아맨','movie_image_3__2.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (639,'알라딘','movie_image_4__14.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (541,'장화, 홍련','movie_image_5.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (500,'앨리스 : 원더랜드에서 온 소년','포스터이미지경로','12세 관람가','115분','현실과 꿈, 과거와 현재가 공존하는 공간 ‘원더랜드’
매일 밤 지독한 악몽에 시달리는 ‘혜중’(정소민)은 4살 이전의 기억이 전혀 없다.
 심각한 환청과 환각으로 일상 생활이 힘들어진 그녀는
 어느 날, 무녀의 충고를 듣고 잃어버린 과거를 찾아 24년 전 가족이 머물렀던 별장을 찾아간다.
 
 별장은 ‘원더랜드’ 펜션으로 변해 있고,
 그곳에는 신비로운 소년 ‘환’(홍종현)과 그를 보살피는 여인 ‘수련’(정연주),
 그리고 흰 토끼가 혜중을 기다리고 있다.
 알 수 없는 숫자의 비밀과 잃어버린 기억을 찾아야 하는 혜중은 원더랜드를 뒤지기 시작하고,
 환은 항상 그녀만을 바라보며 지켜준다.
 그리고, 마침내 24년간 봉인된 잔혹한 비밀과 진실을 마주하게 되는데…
','허은희','홍종현(환), 정소민(혜중), 정연주(수련)','판타지,공포,멜로','한국','2015',7.35,null);
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (528,'지금 만나러 갑니다','movie_image16.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (563,'캡틴 아메리카: 시빌 워','movie_image_3__4.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
Insert into SCOTT.PG_MOVIE (MOVIE_CODE,MOVIE_TITLE,MOVIE_IMG,MOVIE_AGE,MOVIE_TIME,MOVIE_SUMMARY,MOVIE_DIRECTOR,MOVIE_ACTOR,MOVIE_GENRE,MOVIE_NATION,MOVIE_DATE,MOVIE_RATING,MOVIE_TRAILER) values (545,'코렐라인: 비밀의 문','movie_image_2__16.jpg','전체 관람가','81분','인생이 동화 그 자체인 동화속 여자. 아름다운 외모, 착한 마음씨, 사랑스런 노래 솜씨, 그리고 동물들과 대화할 수 있는 능력까지. 동화 세계인 안달라시아에서 행복하게 살아간다. 유일한 꿈이 있다면, 백마 탄 왕자를 만나 결혼하는 것. 결국 꿈은 이루어져 멋진 왕자 에드워드를 만나게 되고, 둘은 다음날 결혼하기로 약속한다. 그런데 결혼하러 가다 마녀의 방해로 뉴욕에 떨어진다? 아니 솟아 오른다. 뉴욕 차도의 맨홀 뚜껑을 열고.
  세상은 냉혹한 곳이고, 사랑이 해피엔딩이라는 걸 절대 믿지 않는 뉴욕의 이혼 전문 변호사. 사랑 표현도 이메일로만 하는 그에게 사랑만 파먹고 살 것 같은 이상한(?) 여자가 뜬금없이 나타나서 자꾸 사람 속을 뒤집어 놓는 사건(?)을 만든다. 진짜 동화속에서 온 여자라면 빨리 돌려보내고 싶다.
"
','케빈 리마','줄리 앤드류스(나레이터 목소리), 에이미 아담스(지젤), 패트릭 뎀시(로버트 필립)','멜로/로맨스','미국','2015',7.35,'https://youtu.be/nEvI_EdJJBI');
REM INSERTING into SCOTT.PG_NOTICE
SET DEFINE OFF;
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (1,'관리자A','5월 4주 새로 올라온 작품','이번 주에도 플라밍고와 함께 하실 수 있도록 새로운 작품을 준비했어요. 
어떤 작품들이 추가되었는지 확인해보세요. 두근두근!

 이번 주 주목할 만한 신작 
장나라 X 정경호 주연! 돌아온 싱글, 모태솔로와 다름없는 미혼 등 다시 사랑에 도전하는 그들의 유쾌 통쾌 로코〈한번 더 해피엔딩〉
[WATCHA EXCLUSIVE] 인류의 웃음을 구원하러 온 자, 퓨처맨 새 시즌 도착! SF 판타지 코믹 히어로물〈퓨처맨 시즌 3〉
레이첼 맥아담스 X 레이첼 와이즈 주연, 엄격한 유대인 사회에서 서로를 절절히 사랑했던 두 여성의 러브 스토리, 국내 미개봉작〈디서비디언스〉
“사탄들의 학교에 루시퍼의 등장이라　　” 이민호 X 박신혜 X 김우빈 주연, (더 킹) 김은숙 작가의 첫 하이틴 드라마〈상속자들〉
에이사 버터필드, 사이먼 페그 주연! 영국의 명문 기숙학교를 배경으로 펼쳐지는 B급 좀비 호러 코미디〈슬로터하우스 룰즈〉
지창욱, 남지현 주연! 살인자에게 쫓기는 스릴러 X 달콤한 로맨스가 만나 진정한 로맨스릴러를 보여준〈수상한 파트너〉
홍콩 금상장 영화제 양안 중국어 영화상 수상작, 중국의 암울한 의료 체계를 비판한 실화 기반의〈나는 약신이 아니다〉
Oh 드림하이~ 난 꿈을 꾸죠　　수지, 김수현, 아이유, 옥택연 등 당시 가장 핫한 아이돌이 대거 출연하여 화제됐던〈드림하이〉 시즌 2까지 도착!
공유 멍뭉미 절정　　 갑작스런 교통사고로 어린 학생과 영혼이 뒤바뀐 한 남자, (호텔 델루나) 홍자매 극본의〈빅〉
서현진 X 양세종 주연, (닥터스) 하명희 작가가 자신의 소설을 직접 드라마화해서 화제된 달콤 쌉싸름 로코 드라마〈사랑의 온도〉
칸영화제 심사위원상 수상작, 이혼을 앞둔 부부 사이에서 상처받고 홀연히 사라진 소년의 이야기〈러브리스〉
 총 영화 37편, TV시리즈 38편 (에피소드 804개)

여러분이 좋아할 만한 작품, 매주 열심히 찾고 있어요.
더 좋은 신작으로 찾아올게요 :)

플라밍고 팀 드림',to_date('20/06/03','RR/MM/DD'),'1',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (2,'관리자B','플라밍고 개인정보취급방침 개정','안녕하세요. 관리자B입니다.

플라밍고 개인정보취급방침 약관이  아래와 같이 개정되어 안내 드리니, 이용에 참고하여 주시기 바랍니다.

1. 개정 시행일자 : 2020년 6월 1일

2. 세부 개정 내용
[변경 항목]
(개정 전)
개인정보의 수집목적 및 이용목적
[수탁업체 및 위탁업무내용]
- NICE 신용평가 : 휴대폰, I-pin 사용자 본인인증

(개정 후)
개인정보의 수집목적 및 이용목적
[수탁업체 및 위탁업무내용]
- (주) KCB : 휴대폰을 통한 사용자 본인인증

[추가 항목]
어린이를 위한 개인정보취급방침 추가

변경된 개인정보취급방침 내용에 대한 문의사항이 있으신 경우, 플라밍고 고객센터(cs@plaminggo.com)로 문의 주시면 친절하게 안내해 드리겠습니다.
더욱 편리하고 안정적인 서비스로 회원님의 성원에 보답하겠습니다.

감사합니다.
플라밍고 팀 드림',to_date('20/06/03','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (3,'관리자B','5월 3주 새로 올라온 작품','이번 주에도 플라밍고와 함께 하실 수 있도록 새로운 작품을 준비했어요. 
어떤 작품들이 추가되었는지 확인해보세요. 두근두근!

  이번 주 주목할 만한 신작 
이준호, 정소민, 예지원, 공명 주연! 조선시대, 수려한 외모와 뛰어난 기예로 여심을 꿰뚫은 기방 도령 준호를 보러 오시오~〈기방도령〉
공효진 X 소지섭 주연, (호텔 델루나) 홍자매 극본! 귀신을 보는 겁많은 백수와 트라우마 가득한 쇼핑몰 사장님의 로맨틱 호러 코미디〈주군의 태양〉
백상예술대상 대상 수상작! 한석규, 장혁, 신세경 주연 및 (선덕여왕)의 김영현 & 박상연 작가 공동 집필작〈뿌리깊은 나무〉
장나라, 신성록, 최진혁 주연 및 막장극의 대모 (아내의 유혹) 김순옥 작가 차기작! 대한제국의 마지막 황후를 소재로 한〈황후의 품격〉
손예진 X 김남길 주연, 아버지를 죽인 원수의 딸과 사랑에 빠진 한 남자. 김지우 작가의 복수 3부작 (부활), (마왕), 그리고〈상어〉
화려한 그림체와 뜨거운 사랑이야기로 당시 수많은 학생들의 가슴을 설레이게했던 추억의 명작 애니?〈베르사이유의 장미〉
[명작 한국 드라마, 윤석호 감독의 사계 시리즈]
“사랑? 웃기G마” 최종화 시청률 42% 사계 시리즈 대표작! 송승헌 X 송혜교 X 원빈의 애틋한 러브스토리〈가을동화〉?
배용준 X 최지우 한류 열풍을 일으킨 대히트작! 하얀 눈이 가득한 남이섬에서 눈사람을 만들던 두 사람, 명장면만 떠올려도 아련한〈겨울연가〉??
 총 영화 78편, TV시리즈 32편 (에피소드 738개)

여러분이 좋아할 만한 작품, 매주 열심히 찾고 있어요.
더 좋은 신작으로 찾아올게요 :)

플라밍고 팀 드림',to_date('20/06/03','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (10,'관리자B','6월까지 감상 가능한 콘텐츠','
왓챠플레이에 콘텐츠를 제공하는 권리사의 요청으로 안타깝게도 각 종료일까지 왓챠플레이에서 볼 수 있는 컨텐츠들입니다.
더 좋은 콘텐츠로 서비스할 수 있도록 계속 노력하겠습니다.

2020. 6. 1
아름다운 비밀(2015)

2020. 6. 5
레옹(1994)

2020. 6.7
인그리드&롤라 추리게임(2012)
인그리드&롤라 보물을 둘러싼 비밀(2014)
눈물의 미학(2016)
다시 집으로(2015)
영원히 함께(2015)
프로일렌의 겨울동화(2016)
세이프(2012)

2020. 6. 8
라자루스(2015)

2020. 6. 9
새벽 세시 : 잠들지 못한 자의 이야기(2014)
월드 인베이젼(2011)
6번째 날(2000)

2020. 6. 15
사랑은 소설처럼(2012)

2020. 6. 17
푸른 강철의 아르페지오 극장판―아르스 노바―DC(2014)

2020. 6. 18
더 타겟(2014)

2020. 6. 22
고스트버스터즈(2016)

2020. 6. 25
배틀걸 하이스쿨(2017)

2020. 6. 27
디스커넥트(2012)
함정(2015)

2020. 6. 30
스트레인저 댄 픽션(2006)
아메리칸 뷰티(1999)
고독한 미식가 시즌 4(2014)
WORKING!!! 3기(2015)
도쿄 ESP(2014)
편의점 남자친구(2017)
7O3X -0.01초의 싸움(2017)
프린세스 프린서플(2017)
사랑과 거짓말(2017)
최유기 RELOAD BLAST(2017)
첫 갸루(2017)
전희절창 심포기어 AXZ(2017)
지옥소녀 4기(2017)
시간의 지배자(2017)
sin 일곱 개의 대죄(2017)
플림플림 자장가(2010)
플림플림의 마법이야기책(2016)
메이드 인 어비스(2017)
언어의 정원(2013)
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (9,'관리자B','6월 3주 새로 올라온 작품','
이번 주에도 왓챠플레이와 함께 하실 수 있도록 새로운 작품을 준비했어요. 
어떤 작품들이 추가되었는지 확인해보세요. 두근두근!

 이번 주 주목할 만한 신작 
[WATCHA EXCLUSIVE] [위기의 주부들] 작가 X [500일의 썸머] 감독, 시대 초월 코믹 치정 살인극〈와이 우먼 킬〉
국내 최초 황금종려상 수상작! 짜파구리를 영어로 어떻게 번역했을까? 달시 파켓의 영자막과 함께 감상하세요!〈기생충〉
지금 방영중인 최신 예능 도착! 새롭게 돌아온 원조 야생 리얼 버라이어티〈1박 2일 시즌 4〉？？？？매주 새 에피소드 추가 예정!
이자벨 위페르 X 클레이 모레추 주연, 선의를 베풀었다가 스토킹 당하기 시작한 그레코, 소름 돋는 공포 스릴러〈마담 싸이코〉
데인 드한 X 다니엘 래드클리프 주연, 미국을 뒤흔든 천재 작가와 그를 만든 치명적 뮤즈의 이야기를 그린 실화 기반〈킬 유어 달링〉
배수지, 이승기 주연! 여객기 사고 배후에 감춰진 국가 비리를 파헤치다! 제작비 250억 역대급 스케일을 보여준〈배가본드〉
[피아니스트] 에이드리언 브로디 주연, 무관심한 세상 속에서 상처입은 사람들이 서로의 아픔을 껴안고 치유하는 과정을 그린〈디태치먼트〉
김희애 주연, [낭만닥터 김사부] 유인식PD와 [비밀의 숲] 안길호PD가 공동 연출한 웰메이드 드라마〈미세스캅〉
안녕! 디지몬~ 네 꿈을 꾸면서 잠이 들래~？[썸머 워즈]의 호소다 마모루가 연출한 1, 2기와 함께 추억에 잠겨보세요〈디지몬 극장판 1-9기〉
배수지 X 이종석 X 정해인 주연의 로맨스 판타지 드라마, [너의 목소리가 들려] 박혜련 작가의 차기작〈당신이 잠든 사이에〉
 총 영화 36편, TV시리즈 41편 (에피소드 681개)

최근 한 달간 새로 올라온 작품
〈부부의 세계〉, 〈기방도령〉, 〈주군의 태양〉, 〈뿌리깊은 나무〉, 〈황후의 품격〉, 〈상어〉, 〈베르사이유의 장미〉, 〈가을동화〉, 〈겨울연가〉, 〈우리집〉, 〈너의 목소리가 들려〉, 〈칠곡 가시나들〉, 〈슈퍼맨이 돌아왔다〉, 〈콜레트〉, 〈시크릿 가든〉, 〈백종원의 골목식당〉, 〈아내의 유혹〉, 〈죽거나 혹은 나쁘거나〉, 〈쉘부르의 우산〉, 〈로슈포르의 숙녀들〉, 〈롤라〉, 〈나의 눈부신 친구〉, 〈어쩌다 발견한 하루〉, 〈타짜: 원 아이드 잭〉, 〈질투의 화신〉, 〈라 붐〉, 〈낭만닥터 김사부〉, 〈김군〉, 〈명탐정 코난〉, 〈연애시대〉, 〈동물, 원〉, 〈내 남자의 여자〉, 〈푸른 바다의 전설〉, 〈열혈사제〉, 〈달의 연인 - 보보경심 려〉, 〈그들이 사는 세상〉, 〈그 겨울, 바람이 분다〉 등
 총 영화 232편, TV시리즈 180편 (에피소드 4364개)

여러분이 좋아할 만한 작품, 매주 열심히 찾고 있어요.
더 좋은 신작으로 찾아올게요 :)

왓챠플레이 팀 드림
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (8,'관리자A','플라밍고, 크롬캐스트 기능 지원!','
오래 기다리셨죠? 알아요...
드디어 왓챠플레이에 크롬캐스트 기능이 추가되었어요!

플라밍고에 매주 업데이트 되는 좋은 영화, 드라마들을 이제 크롬캐스트로 TV에서도 마음껏 감상해 보세요 :)
(크롬캐스트는 TV의 HDMI 포트에 연결해 사용하는 장치로, 크롬캐스트에 대한 자세한 내용은 이곳을 눌러 확인해보세요. Google Cast 기능이 있는 Android TV 기기들에서도 사용할 수 있어요.)

크롬캐스트를 이용하기 위해선 플라밍고를 최신 버전으로 업데이트하셔야 해요. 
스토어로 들어간 다음, "업데이트" 버튼이 상단에 있다면 업데이트 해주세요.

이제, 큰 화면에서 더욱 풍부하게 즐기세요.
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (7,'관리자A','[PlamingGo EXCLUSIVE] 〈와이 우먼 킬〉플라밍고 단독공개!','
“살인이 이혼보다 싸다!”
〈500일의 썸머〉감독과 〈위기의 주부들〉작가가 그린 시대 초월 코믹 치정극

하나의 집, 세 번의 살인, 세 명의 여성

“그는 다시 내 곁에 돌아올 거야"
1963년 현모양처 베스 앤, 남편을 다시 뺏어오기 위해 내연녀에게 몰래 접근하다.

“뒷소문만은 막아내야 해!”
1984년 사교계 여왕 시몬, 게이 남편과 친구 아들의 끊임없는 구애 사이에서 고민에 빠지다.

“우리의 동거 이대로 괜찮을까?”
2019년 다자연애를 즐기는 테일러, 내 여자친구와 셋이 살아보자는 남편의 제안에 의심이 싹트기 시작한다.

이혼 대신 살인을 택한 세 여성의 이야기,
〈와이 우먼 킬〉을 지금 플라밍고에서 만나보세요!

플라밍고 팀 드림
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (6,'관리자A','플라밍고 자막 이슈와 관련해 진심으로 사과드립니다.','
안녕하세요, 플라밍고팀입니다.

최근 발생한 자막 이슈로 인해 혼란과 실망을 느끼셨을 분들께 진심으로 사과드립니다. 더 많은 플라밍고 유저분들께 내용을 명확하게 알리고 사과드리고자 공지를 올립니다.  

플라밍고는 콘텐츠 권리사가 제공한 공식 자막을 사용합니다.

2020년 5월 26일, 사용자의 제보를 통해 특정 작품의 자막이 비공식 자막으로 업로드되어 있음을 발견하였습니다. 확인 결과 2016년 플라밍고 론칭 당시, 검수 과정에서 여러 버전의 자막을 테스트하던 중 비공식 자막으로 잘못 업로드 한 것임을 확인하였습니다. 이에 해당 작품의 서비스를 바로 중단하고 자막 교체 작업을 진행하고 있습니다. 또한 같은 시기에 업로드 된 작품들을 재검수한 결과, 해당 작품 외에는 모두 공식자막인 것을 확인하였습니다.

플라밍고는 콘텐츠를 사랑하는 유저들이 보다 좋은 환경에서 작품을 감상할 수 있도록 노력해야 하며, 건강한 콘텐츠 소비문화를 만들기 위해 최선을 다해야 하는 팀입니다. 그럼에도 불구하고 이와 같은 실수로 많은 분들께 실망을 안겨드려 다시 한 번 진심으로 사과드립니다.

이번 사안이 단순한 사과로 그칠 문제가 아니라는 사실을 충분히 인지하고 있습니다. 따라서 재발 방지를 위해 아래와 같은 조치를 취할 예정입니다.

1. 공식 자막 확인 절차를 강화하고 전반적인 자막의 품질 향상을 위해 노력하겠습니다.
2. 플라밍고에서 서비스 중인 모든 작품에 대해 철저한 전수 조사를 진행하겠습니다.

저희의 실수로 인해 많은 분들께 실망을 드린 점 사과드리며 소중한 제보 또한 진심으로 감사드립니다. 앞으로도 더 좋은 환경에서 작품을 감상하실 수 있도록 최선을 다해 노력하겠습니다.

감사합니다.
플라밍고팀 드림',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (4,'관리자C','5월까지 감상 가능한 콘텐츠','
플라밍고에 콘텐츠를 제공하는 권리사의 요청으로 안타깝게도 각 종료일까지 플라밍고에서 볼 수 있는 컨텐츠들입니다.
더 좋은 콘텐츠로 서비스할 수 있도록 계속 노력하겠습니다.

2020. 5. 3
어바웃 어 보이(2002)
원초적 본능(1992)
상의원(2014)
몬스터즈(2014)

2020. 5. 11
언더 워터(2016)

2020. 5. 13
나자렛 예수(1977)
노스바스의 추억(1994)
누구를 위하여 종은 울리나(1943)
데스 위시(1974)
러닝맨(1987)
런던의 늑대 인간(1981)
마르셀의 여름(1990)
마르셀의 추억(1990)
분노의 핑퐁(2007)
브레드레스(1983)
스크림(1996)
아웃사이더(1983)
알렉스와 엠마(2003)
이스케이프 프롬 뉴욕(1981)
존 웨인의 기병대(1959)
킹 뉴욕(1990)
택시(1998)
파라노말 액티비티(2007)
프리실라(1994)
할로윈 4(1988)
할로윈 7 - H20(1998)
흑과 백(1958)
흑인 오르페(1959)

2020. 5. 15
청춘예찬(2013)

2020. 5. 17
아포칼립토(2006)
햄릿(1990)

2020. 5. 19
칠드런 오브 맨(2006)
킬러의 보디가드(2017)

2020. 5. 20
폭풍우 치는 밤에: 비밀 친구(2012)
붓다:위대한 여정(2014)
우주형제#0(2014)

2020. 5. 22
비포 미드나잇(2013)

2020. 5. 24
대호시광(2015)

2020. 5. 29
스콜피온 인 러브(2013)

2020. 5. 30
시도니아의 기사(2014)
신만이 아는 세계(2010)
신만이 아는 세계 2기(2011)
리미트(2013)

2020. 5. 31
유주얼 서스펙트(1995)
카멜롯의 전설(1995)
인사이드 잡(2010)
보보경심(2011)
썬더볼트 판타지 동리검유기(2016)
마크던전 RPG(2017)
호쿠사이와 밥만 있으면(2017)
스모 걸!(2010)
독수리 오형제(2013)
깔깔깔 희망버스(2012)
가브리엘의 게임라이프(2018)
악어TV part1(2018)
잉여맨TV part1(2018)
블랙 달리아(2006)
아이언 스카이(2012)
1944 대전투(2014)
뇌남(2013)
사랑은 당신(2012)
원스 어폰 어 타임 인 아메리카(1984)
하우스 오브 다크(2014)
스플린터(2008)
친밀한 적(2007)
악마가 너의 죽음을 알기 전에(2007)
가필드 펫 포스 3D(2009)
음양사(2001)
음양사 2(2003)
캡처링 대디(2012)
아키라 (1988)
응답하라 또봇 : 변신자동차 또봇(2018)
응답하라 또봇 : 합체또봇 타이탄(2018)
응답하라 또봇 : 또 하나의 또봇(2018)
응답하라 또봇 : 최강합체 트라이탄(2018)
응답하라 또봇 : 트라이탄 슈퍼콤보(2018)
응답하라 또봇 : 위풍당당 델타트론(2018)
응답하라 또봇 : 태권전사 K(2018)
응답하라 또봇 : 카고와 테라클(2018)
응답하라 또봇 : 전설의 기사 기가세븐(2018)
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_NOTICE (NO_NUM,NO_ID,NO_TITLE,NO_CONTENT,NO_DATE,NO_HITS,NO_GROUP,NO_STEP,NO_INDENT,NO_FILESRC) values (5,'관리자A','
안녕하세요. 플라밍고입니다.
플라밍고 서비스 약관이 아래와 같이 개정되어 안내 드리니, 이용에 참고하여 주시기 바랍니다.','1. 개정 시행일자 : 2019년 12월 16일

2. 세부 개정 내용
    제 2조 용어의 정의 (개정) 
    1)회원: 플라밍고 약관 및 본 약관에 동의하고 계정을 생성한 자로서, 회사가 제공하는 서비스를 통하여 무료로 제공하는 정보를 지속적으로 이용할 수 있는 자를 말합니다. 단, 회원이 생성한 계정을 통해 가족 구성원이 함께 이용할 수 있는 서비스에 가입한 경우에는 그 가족 구성원(이하 “가족 구성원”)을 포함하는 의미로 사용될 수 있습니다.
    
    제 5조 프로그램 설치 및 데이터 수집 (개정) 
    - 회사는 유료 서비스를 제공함에 있어 필요한 경우 회원에게 어플리케이션 및 별도의 프로그램을 설치 및 업데이트하도록 안내할 수 있으며, 회원은 원하지 않을 경우 그 설치 및 업데이트를 거부할 수 있습니다. 다만, 회원이 어플리케이션 및 별도 프로그램의 설치 및 업데이트를 거부하는 경우 서비스 이용이 제한될 수 있습니다.
    
    제 6조 서비스 이용의 기술적 요구 사항 (개정) 
    <서비스 이용 필수 사양>
    1)컴퓨터(PC)
    유료서비스는 아래 열거한 웹브라우저 이용이 가능한 Windows, macOS, Linux 등의 OS에서 동작합니다.
    - 지원 웹브라우저: Chrome, Edge, Firefox (상기 브라우저의 최신 정식 버전에서 가장 잘 동작합니다)
    2)모바일 단말기(스마트폰, 태블릿 PC)
    유료서비스는 가장 최신의 정식 버전 OS에서 가장 잘 동작하며, 최소 지원 OS 버전 정보는 다음과 같습니다.
    - Android: 4.1 버전 이상
    - Android TV: 5.0 버전 이상(일부 기기는 제조사 사정에 따라 지원이 제외될 수 있습니다)
    - iOS: iOS 10.0 버전 이상
    3)스마트 TV
    - 2016년형을 포함한 그 이후 출시된 삼성 스마트 TV
    - 2016년형을 포함한 그 이후 출시된 LG 스마트 TV
    4) 기타
    - 크롬캐스트(1/2/3세대, Ultra)
    
    제 6조 서비스 이용의 기술적 요구 사항 (추가)
    - 유료 서비스의 화질은 회원이 결제한 이용권, 사용하는 디바이스, 인터넷 접속 속도, 인터넷 대역폭 등 다양한 요인의 영향을 받기 때문에 모든 콘텐츠가 언제나 HD, Full HD, Ultra HD, HDR 등의 화질로 제공되는 것은 아닙니다.
    
    제 8조 유료 서비스와 유료회원 (개정)
    - 콘텐츠(영화, TV 프로그램 등)의 권리를 보유하고 있는 개인, 단체, 법인(‘권리자 등’) 간의 계약의 체결 여부 및 개별 계약의 내용, ‘권리자 등’의 사후 요청에 따라 콘텐츠의 이용이 제한되거나 변경될 수 있습니다. 회사는 ‘권리자 등’의 요청이 있게 되는 경우, 해당 요청에 따라 유료 서비스를 지원하는 기기의 종류, 회원별 이용 가능 기기 대 수, 동시 재생 회선 수 등을 변경할 수 있습니다.
    
    제 13조 유료서비스 예약 변경, 즉시 변경 등 (개정)
    - 회원이 이미 구매/가입한 유료 서비스는 회사가 정한 정책에 따라 변경신청할 경우 즉시 변경 혹은 1개월 예약 변경을 할 수 있습니다.
    - 타사 계정 혹은 제휴를 통해 유료 서비스의 이용권을 구매하여 사용하는 경우 해당 타사의 정책을 따릅니다.
    
    제 13조 유료서비스 예약 변경, 즉시 변경 등 (추가)
    - 즉시 변경의 경우, 회원이 변경 요청한 이용권으로 즉시 교체되며, 기존 구매/가입한 이용권의 남은 기간과 변경 요청한 이용권의 가격을 비례배분하여 이용 기간이 조정되며 새로운 결제주기가 적용 됩니다.
    - 애플 IAP(In-App-Purchase)의 경우 애플의 결제 정책을 따릅니다.
    
    제 18조 개인정보보호 (추가)
    - 회원 본인의 가족 구성원은 서비스 이용 과정에서 회원 본인의 개인정보를 볼 수 있습니다.
    
    변경된 플라밍고 서비스 이용약관 내용에 대한 문의사항이 있으신 경우, 플라밍고 고객센터(plaminggo@naver.com)로 문의 주시면 친절하게 안내해드리겠습니다.
    
    더욱 편리하고 안정적인 서비스로 회원님의 성원에 보답하겠습니다.
    감사합니다.
    
    플라밍고 팀 드림
',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
REM INSERTING into SCOTT.PG_QNA
SET DEFINE OFF;
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (1,'dwm8895','영상플레이 오류는 어떻게 조치하나요?','						
영상을 다운받고 크롬에서 영상을 실행하는데
영상이 끊기다가 안나오네요
방법좀 알려주시면 감사하겠습니다',to_date('20/06/03','RR/MM/DD'),'1',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (12,'adawd12','음량 오류는 어떻게 조치하나요?','
영상을 다운받고 크롬에서 영상을 실행하는데
음성조절이 잘안되는것 같습니다...
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (13,'dlwns96','로그인이 안될시에는 어떻게 조치하나요?','
로그인을 시도하는데 화면이로그인후 화면으로 넘어가질 않네요..
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (14,'faf51234','회원탈퇴는 어떻게 하나요?','
회원탈퇴 하고싶은데 어떻게하나요
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (35,'nst144','자막이 안나오는데 어떻게 조치하나요?','
영상을 다운받고 크롬에서 영상을 실행하는데
자막이 아예 안나옵니다.
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (36,'asgeweg','이용권 교체는 어떻게 하나요?','
이용권 교체를 하고싶은데
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (37,'aerha3445','제가원하는 영화가 없는데 추가할수있나요?','
제가원하는 영화가없는데
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (38,'iesrr341','플라밍고에 도움이 될만한 아이디어를 추천하고싶어요','
각종여러가지 기능을추가해서 플라밍고가 더 발전했으면 좋겠습니다.
반영해주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (39,'aeg2435','크롬말고 다른브라우저로는 사용이 불가하나요?','
크롬이 좀 끊겨서 다른브라우저로 접속하고싶은데
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (40,'4572aaas','재생 오류는 어떻게 조치하나요?','
재생버튼을 클릭하고 재생하려는데 재생이안됩니다ㅠㅠ
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
Insert into SCOTT.PG_QNA (QNA_NUM,QNA_ID,QNA_TITLE,QNA_CONTENT,QNA_DATE,QNA_HITS,QNA_GROUP,QNA_STEP,QNA_INDENT,FILESRC) values (41,'6as2321','내정보는 어떻게 사용하나요?','
컴맹이라서 잘모르겠습니다!
방법좀 알려주시면 감사하겠습니다',to_date('20/06/15','RR/MM/DD'),'0',0,0,0,null);
REM INSERTING into SCOTT.PG_USER
SET DEFINE OFF;
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (2,'damdadidam','dam1234567@!','damdadidam@gmail.com','이길자','19950111',2,'01019950111',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (3,'blue0505','blue9605','blue0505@naver.com','진남이','19960505',1,'01091011121',to_date('20/06/02','RR/MM/DD'),'베이직',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (4,'red0505','red9605','red0505@naver.com','진홍이','19960505',1,'01031415161',to_date('20/06/02','RR/MM/DD'),'베이직',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (6,'purple0505','purple9605','purple0505@naver.com','진보라','19960505',2,'01071819202',to_date('20/06/02','RR/MM/DD'),'베이직',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (7,'white0505','white9605','white0505@naver.com','진하얀','19960505',2,'01012223242',to_date('20/06/02','RR/MM/DD'),'베이직',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (8,'snowwhite23','snowwhite2312','snowwhite23@google.com','백설','19231221',2,'01052627282',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (9,'cindy43','cindy4307','cindy43@google.com','신데렐라','19430726',2,'01093031323',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (10,'aurora43','aurora4301','aurora43@google.com','오로라','19430129',2,'01033435363',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (11,'ariel75','ariel7512','ariel75@google.com','에리얼','19751221',2,'01073839404',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (12,'belle74','belle7407','belle74@google.com','벨','19740704',2,'01014243444',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (13,'jasmine77','jasmine7711','jasmine77@google.com','자스민','19771108',2,'01054647484',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
Insert into SCOTT.PG_USER (USER_CODE,USER_ID,USER_PASS,USER_MAIL,USER_NAME,USER_BIRTH,USER_GENDER,USER_PHONE,USER_REGDATE,USER_LEVEL,USER_STATUS) values (0,'dlwns96','123123','dlwns7339@google.com','이준','19960920',1,'01091887339',to_date('20/06/02','RR/MM/DD'),'프리미엄',0);
REM INSERTING into SCOTT.MPG_REVIEW
SET DEFINE OFF;
Insert into SCOTT.MPG_REVIEW (REVIEW_NUM,JOIN_CODE,MREVIEW_WRITER,MREVIEW_CONTENT,MREVIEW_RATING,MREVIEW_DATE) values (1,500,'댓글작성자','댓글작성내용',5,to_date('20/06/08','RR/MM/DD'));
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
