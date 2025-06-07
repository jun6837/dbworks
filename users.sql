-- DB> TABLE 
-- 회원(USERS) TALBE 생성
--PRIMARY KEY : 중복 저장할 수 없고, NOT NULL
CREATE TABLE users (
    userid VARCHAR2(10) PRIMARY KEY, -- 아이디
    passwd VARCHAR2(100) NOT NULL, -- 비밀 번호
    age NUMBER(3) -- 나이

);

--자료 추가
--ISNERT INTO
INSERT INTO users (userid, passwd) 
VALUES ('today','a1234');

INSERT INTO users (userid, passwd) 
VALUES ('cloud','a12345');

INSERT INTO users VALUES ('sky' , 'a12345!', 21);
COMMIT;-- 수행완료(변경된 내용 반영)
-- 검색

SELECT * FROM users;
--회원의 아이디와 비밀번호를 검색

SELECT userid,passwd FROM users;

-- 아이디가 today 인 회원의 정보

select * from users
 where userid = 'today';


--테이블 삭제
drop table users;


