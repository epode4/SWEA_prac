-- 코드를 입력하세요
SELECT CAR_ID,
CASE when
max('2022-10-16' between start_date and end_date) then '대여중'
ELSE '대여 가능'
END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY CAR_ID
ORDER BY CAR_ID DESC