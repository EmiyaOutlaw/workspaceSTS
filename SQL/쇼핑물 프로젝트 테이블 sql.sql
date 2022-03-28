--쇼핑몰 프로젝트 관련 테이블--
-- 테이블 : 회원정보, 상품카테고리, 상품정보, 상품이미지정보테이블, 장바구니, 구매정보 
--회원정보 테이블
DROP TABLE SHOP_MEMBER;
CREATE TABLE SHOP_MEMBER (
    MEM_ID VARCHAR2(100) CONSTRAINT PK_SHOP_MEMBER PRIMARY KEY
    , MEM_PW VARCHAR2(100) NOT NULL
    , MEM_NAME VARCHAR2(100) NOT NULL
    , MEM_TELL VARCHAR2(100) NOT NULL -- 010-1111-2222
    , MEM_EMAIL VARCHAR2(200)
    , MEM_ADDR VARCHAR2(300)
    , IS_ADMIN VARCHAR2(6) DEFAULT 'N' -- Y, 
    , JOIN_DATE DATE DEFAULT SYSDATE
);
COMMENT ON TABLE SHOP_MEMBER IS '쇼핑몰 회원정보 테이블';
COMMENT ON COLUMN SHOP_MEMBER.MEM_ID IS '회원ID';
COMMENT ON COLUMN SHOP_MEMBER.MEM_PW IS '회원PW';

--상품 카테고리   
CREATE TABLE ITEM_CATEGORY (
    --CATE_001
    CATE_CODE VARCHAR2(50) CONSTRAINT PK_ITEM_CATEGORY PRIMARY KEY
    , CATE_NAME VARCHAR(100) NOT NULL
);

INSERT INTO ITEM_CATEGORY VALUES('CATE_001', 'IT/인터넷');
INSERT INTO ITEM_CATEGORY VALUES('CATE_002', '사회/과학');
INSERT INTO ITEM_CATEGORY VALUES('CATE_003', '경제/경영');
INSERT INTO ITEM_CATEGORY VALUES('CATE_004', '소설');



SELECT CATE_CODE, CATE_NAME
FROM ITEM_CATEGORY;

DROP TABLE ADMIN_MENU;
--메뉴 테이블
CREATE TABLE ADMIN_MENU (
    MENU_CODE VARCHAR2(50) PRIMARY KEY 
    , MENU_NAME VARCHAR2(100) NOT NULL UNIQUE
    , MENU_URI VARCHAR2(100) NOT NULL UNIQUE
);

INSERT INTO ADMIN_MENU VALUES('MENU_001', '상품관리', 'categoryManage');
INSERT INTO ADMIN_MENU VALUES('MENU_002', '회원관리', 'memberList');



SELECT * FROM SHOP_ITEM;

DROP TABLE SUB_MENU;

--서브 메뉴 테이블

CREATE TABLE SUB_MENU(
    SUB_MENU_CODE VARCHAR2(50) PRIMARY KEY
    , SUB_MENU_NAME VARCHAR2(100) NOT NULL UNIQUE
    , MENU_CODE VARCHAR2(50) REFERENCES ADMIN_MENU (MENU_CODE)
    ON DELETE CASCADE
    , MENU_URI VARCHAR2(100) NOT NULL UNIQUE
);

INSERT INTO SUB_MENU VALUES('SUB_MENU_001', '카테고리 관리', 'MENU_001', 'categoryManage');
INSERT INTO SUB_MENU VALUES('SUB_MENU_002', '상품 등록', 'MENU_001', 'regItem');
INSERT INTO SUB_MENU VALUES('SUB_MENU_003', '상품 관리', 'MENU_001', 'itemManage');
INSERT INTO SUB_MENU VALUES('SUB_MENU_004', '회원 등록', 'MENU_002', 'memberList');

SELECT * FROM SUB_MENU;


UPDATE SUB_MENU
SET SUB_MENU_NAME = '상품 등록'
WHERE SUB_MENU_CODE = 'SUB_MENU_003';

DELETE SUB_MENU
WHERE SUB_MENU_CODE = 'SUB_MENU_004';




--상품정보테이블
DROP TABLE SHOP_ITEM;

CREATE TABLE SHOP_ITEM (
    --ITEM_001
    ITEM_CODE VARCHAR2(100) CONSTRAINT PK_SHOP_ITEM PRIMARY KEY
    , ITEM_NAME VARCHAR2(100) NOT NULL UNIQUE
    , ITEM_PRICE NUMBER NOT NULL
    , ITEM_DETAIL VARCHAR2(1000)
    , ITEM_STOCK NUMBER DEFAULT 10
    , CATE_CODE VARCHAR2(50) REFERENCES ITEM_CATEGORY (CATE_CODE)
        ON DELETE CASCADE 
);


-- 상품 이미지 정보 테이블 

CREATE TABLE ITEM_IMAGE (
    IMG_CODE VARCHAR2(50) PRIMARY KEY   --IMG_001
    , ORIGIN_IMAGE_NAME VARCHAR2(200) --원본 파일명
    , ATTACHED_IMG_NAME VARCHAR2(200) --첨부된 파일명
    , IS_MAIN VARCHAR2(10) -- 대표 이미지 여부 'Y', 'N'
    , ITEM_CODE VARCHAR2(100) REFERENCES SHOP_ITEM (ITEM_CODE)
    ON DELETE CASCADE
);

--상품 이미지 정보 테이블
CREATE TABLE ITEM_IMAGE (
    IMG_CODE VARCHAR2(50) PRIMARY KEY --IMG_001
    , ORIGIN_IMG_NAME VARCHAR2(200) --원본 파일명
    , ATTACHED_IMG_NAME VARCHAR2(200) -- 첨부된 파일명
    , IS_MAIN VARCHAR2(10) --대표 이미지 여부 'Y', 'N'
    , ITEM_CODE VARCHAR2(100) REFERENCES SHOP_ITEM (ITEM_CODE)
    ON DELETE CASCADE --부모가 지워지면 자식도 자동으로 지워지는
);


-- 장바구니 테이블 
CREATE TABLE SHOP_CART(
    --상품명, 가격 
    CART_NUM NUMBER PRIMARY KEY 
    , ITEM_CODE VARCHAR2(100) REFERENCES SHOP_ITEM (ITEM_CODE) NOT NULL 
    , MEM_ID VARCHAR2(100) REFERENCES SHOP_MEMBER (MEM_ID) NOT NULL
    , ITEM_CNT NUMBER NOT NULL 
    , CREATE_DATE DATE DEFAULT SYSDATE
);


DELETE FROM ITEM_CATEGORY
WHERE 
CATE_CODE = 'CATE_003';

SELECT * FROM ITEM_CATEGORY;

SELECT MEM_ID, MEM_PW, MEM_NAME
FROM SHOP_MEMBER;

UPDATE SHOP_MEMBER
SET 
IS_ADMIN = 'Y'
WHERE MEM_ID = 'botw';

--다음 상품코드 조회하는 SQL
SELECT 'ITEM_'||
        LPAD(NVL(MAX(TO_NUMBER(SUBSTR(ITEM_CODE, 6, 3))), 0) + 1, 3, 0) 
FROM SHOP_ITEM;


SELECT *
FROM SHOP_ITEM;

--ITEM_001
--ITEM_002  -> ITEM_003

--SUBSTR(ITEM_CODE, 6) -> '001', '002'
--TO_NUMBER(SUBSTR(ITEM_CODE, 6)) -> 1, 2
--NVL( , )
--LPAD(값, 자릿수, 채워 줄 문자)
--LPAD('자바', 5, '#') -> '#JAVA'
SELECT 'ITEM_'||LPAD(NVL(MAX(TO_NUMBER(SUBSTR(ITEM_CODE, 6))), 0) + 1, 3, '0') 
FROM SHOP_ITEM;

SELECT ITEM.ITEM_CODE 
    , ITEM_NAME 
    , ITEM_PRICE
    , ITEM_DETAIL
    , ATTACHED_IMG_NAME
    , IS_MAIN
FROM SHOP_ITEM ITEM, ITEM_IMAGE IMG
WHERE ITEM.ITEM_CODE = IMG.ITEM_CODE
AND ITEM.ITEM_CODE = #{itemCode};


SELECT ITEM.ITEM_CODE
			, ITEM_NAME
			, ITEM_PRICE
			, ATTACHED_IMG_NAME
		FROM SHOP_ITEM ITEM, ITEM_IMAGE IMG
		WHERE ITEM.ITEM_CODE = IMG.ITEM_CODE
		AND IS_MAIN = 'Y'
		ORDER BY ITEM.ITEM_CODE DESC;
        
    SELECT * FROM SHOP_ITEM;
    SELECT * FROM ITEM_IMAGE;
    
    DELETE SHOP_ITEM;
    DELETE ITEM_IMAGE;
    
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'SHOP_ITEM';

DELETE * FROM SHOP_ITEM
WHERE ITEM_CODE = 'ITEM_006';

SELECT * FROM SHOP_CART;


--상품 이미지명, 가격, 수량, 총가격
SELECT ITEM.ITEM_NAME
    , ITEM.ITEM_PRICE 
    , CART.ITEM_CNT
    , ITEM.ITEM_PRICE * CART.ITEM_CNT AS TOTAL_PRICE
    , IMG.ATTACHED_IMG_NAME
FROM SHOP_ITEM ITEM, SHOP_CART CART, ITEM_IMAGE IMG
WHERE ITEM.ITEM_CODE = CART.ITEM_CODE
AND CART.ITEM_CODE = IMG.ITEM_CODE 
AND CART.MEM_ID = 'botw'
AND IMG.IS_MAIN = 'Y';

SELECT 
    (SELECT ITEM_NAME 
    FROM SHOP_ITEM 
    WHERE ITEM_CODE = SHOP_CART.ITEM_CODE) AS ITEM_NAME
    , (SELECT ITEM_PRICE
        FROM SHOP_ITEM
        WHERE ITEM_CODE = SHOP_CART.ITEM_CODE) AS ITEM_PRICE
    , ITEM_CNT
    , (SELECT ITEM_PRICE 
        FROM SHOP_ITEM
        WHERE ITEM_CODE = SHOP_CART.ITEM_CODE) * ITEM_CNT AS TOTAL_PRICE
    , (SELECT ATTACHED_IMG_NAME
        FROM ITEM_IMG
        WHERE ITEM_CODE = SHOP_CART.ITEM_CODE
        AND IS_MAIN = 'Y') AS ATTACHED_IMG_NAME
FROM SHOP_CART; 


--장바구니 코드, 상품코드, 상품명, 가격, 상품 이미지
--총가격, 장바구니 회원 ID, 장바구니에 들어간 개수, 날짜
--DROP VIEW CART_VIEW;
--수정이 필요할 경우. DROP을 할 필요가 없다. 그저 CREATE OR REPLACE하면 이를 대체하거나 혹은 생성한다. 뷰명에 의거해서. 
CREATE OR REPLACE VIEW CART_VIEW 
AS 
SELECT CART.CART_NUM 
    , CART.ITEM_CODE
    , ITEM.ITEM_NAME
    , ITEM.ITEM_PRICE
    , ITEM.ITEM_PRICE * CART.ITEM_CNT AS TOTAL_PRICE
    , CART.ITEM_CNT
    , TO_CHAR(CART.CREATE_DATE, 'YYYY-MM-DD') AS CREATE_DATE --2022-03-28
    , CART.MEM_ID
    , IMG.ATTACHED_IMG_NAME
FROM SHOP_CART CART, SHOP_ITEM ITEM, ITEM_IMAGE IMG
WHERE CART.ITEM_CODE = ITEM.ITEM_CODE
AND CART.ITEM_CODE = IMG.ITEM_CODE
AND IMG.IS_MAIN = 'Y';


--권한이 없을 경우 관리자 계정(SYSTEM)으로 들어가서
--GRANT CREATE VIEW TO MYDB;


SELECT * FROM CART_VIEW
WHERE MEM_ID = 'botw';

DELETE SHOP_CART;

SELECT SUM(TOTAL_PRICE)
FROM CART_VIEW
WHERE MEM_ID = 'botw';