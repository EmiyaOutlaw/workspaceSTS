CREATE TABLE TEST_BOARD (
    BOARD_NUM NUMBER PRIMARY KEY
    , BOARD_TITLE VARCHAR2(200) NOT NULL
    , BOARD_CONTENT VARCHAR2(500)
    , BOARD_WRITER VARCHAR2(100) NOT NULL
    , CREATE_DATE DATE DEFAULT SYSDATE
);

SELECT NVL(MAX(BOARD_NUM), 0) + 1 FROM TEST_BOARD;


SELECT BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_WRITER
FROM TEST_BOARD
WHERE BOARD_NUM = '1';




SELECT DISTINCT ORDER_NUM
    , MEM_ID
    , (SELECT MEM_NAME
    FROM SHOP_MEMBER
    WHERE MEM_ID = SHOP_BUY.MEM_ID) AS MEM_NAME
    , TO_CHAR(BUY_DATE, 'YYYY-MM-DD HH24:MI') AS BUY_DATE
FROM SHOP_BUY
WHERE 1 = 1 
AND UPPER(ORDER_NUM) LIKE UPPER('%admin%')
AND (UPPER(MEM_ID) LIKE UPPER('%admin%') 
        OR 
        UPPER((SELECT MEM_NAME
            FROM SHOP_MEMBER
            WHERE MEM_ID = SHOP_BUY.MEM_ID)) LIKE UPPER('%admin%'))
AND TO_CHAR(BUY_DATE, 'YYYY-MM-DD') >= TO_DATE('20220401') AND TO_CHAR(BUY_DATE, 'YYYY-MM-DD') <= TO_DATE('20220405')
ORDER BY BUY_DATE DESC;


SELECT * FROM EMP;
--입사일이 2007년 3월 1일 이후인 사원들의 모든 정보를 조회 
SELECT *
FROM EMP
WHERE HIREDATE > TO_DATE('20020301'); 
--날짜 TYPE은 숫자로 비교는 안 되지만 문자로는 비교 가능하다. 
