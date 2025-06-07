--employee 테이블
--자료형 1.문자 - VARCHAR2(10), 2.숫자 - NUMBER, 3.날짜- DATE
CREATE TABLE employee(
    -- 칼럼명 자료형 
    id CHAR(4)PRIMARY KEY, -- 사원 아이디(고정길이)
    name VARCHAR2(10) NOT NULL,     -- 이름(가변길이)
    salary NUMBER      -- 급여
); 



--전체 검색
SELECT * FROM employee;

--자료 추가
INSERT INTO employee(id, name, salary) VALUES ('e101', '신유빈', 3000000);
INSERT INTO employee(id, name, salary) VALUES ('e102', '이정후', 2000000);
INSERT INTO employee(id, name) VALUES ('e103', '임시현');
--무결성 제약조건 불허(NOT NULL)
--INSERT INTO employee(id, salary) VALUES ('e104',2500000 );

--급여가 250만원 이상인 사원을 검색
select * from employee where salary >= 2500000;

--이름이 이정후인 사원을 검색
SELECT * FROM employee WHERE name LIKE '이정후';

--이름에 정후가 포함된 검색
SELECT * FROM employee WHERE name LIKE '%정후%';

--급여가 없는 사원 검색
SELECT * FROM employee WHERE salary is NULL;

--급여가 없는 사원에게 400만원을 지급
UPDATE employee SET salary = 4000000 where name like '임시현';

--ID 가 'e102'인 사원의 이름을 '이종범'으로 변경하고 급여를 500만원으로 수정
UPDATE employee SET name = '이종범',salary = 5000000 where id = 'e101';

COMMIT;  -- 변경된 내용을 DB에 적용

--테이블 삭제
DROP TABLE employee;