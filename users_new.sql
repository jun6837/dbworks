

CREATE TABLE users(
    userid VARCHAR2(10) PRIMARY key,
    userpassword VARCHAR2(100) NOT NULL,
    username VARCHAR2(20) NOT NULL,
    userage NUMBER(3)
    
);

INSERT INTO users(userid, userpassword, username , userage) VALUES ('today', 't1357!','이정후',26);

SELECT * FROM users;

--이정후를 이종범으로 바꾸고 나이를 50세로 변경
UPDATE users SET username = '이종범' , userage = 50 
WHERE userid = 'today';


commit;







--users 테이블 삭제
DROP TABLE users;