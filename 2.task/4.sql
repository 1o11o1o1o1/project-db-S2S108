-- 1.担当者(sales)表から、売上金額(amt)の合計を表示する。
SELECT SUM(amt) as "売上合計"
FROM sales;

-- 2.商品(com)表から、単価(prc)の最小値、最大値、および平均値を表示する。ただし、担当者番号(sno)が101、102、103の商品は除く。
SELECT MIN(prc) as "最小値",MAX(prc) as "最大値",AVG(prc) as "平均値"
FROM com
WHERE sno NOT IN(101,102,103);

-- 3.担当者(sales)表から、上司がいない担当者の数を表示する。
SELECT COUNT(*) AS NOT
FROM sales
WHERE mgr IS NULL;

-- 4.注文(ord)表から、商品の種類数を表示する。
select count(DISTINCT cno) AS "種類数"
FROM ord;

-- 5.商品(com)表から、担当者番号(sno)ごとの商品番号(cno)の種類数を表示する。
SELECT sno AS "担当No",COUNT(cno) AS "種類数"
FROM com
GROUP BY sno;

-- 6.担当者(sales)表から、部門番号(dno)ごとに、最も古い配属日(edate)を表示する。ただし、部門番号(dno)がNULLの行は除く。
SELECT dno, MIN(edate)
FROM sales
WHERE dno IS NOT NULL
GROUP BY dno;

-- 7.受注(ord)表から、受注日(odate)ごとに、販売金額(prc)の最大値と最小値の差を表示する。
SELECT odate,MAX(prc) as "最大",min(prc) AS "最小",MAX(prc) - min(prc) as "差"
FROM ord
GROUP BY odate;


-- 8.受注(ord)表から、商品番号(cno)ごとに、最大販売金額(prc)が\10,000以上の行のみ表示する。
select cno,MAX(prc) as "最大販売金額"
from ord
GROUP BY cno
HAVING MAX(prc) >=10000

-- 9.担当者(sales)表から、部門(dno)ごとの平均売上金額(amt)を取得しているSELECT文を選択しなさい。ただし、その部門(dno)の最小売上金額(amt)と最大売上金額(amt)の差が3000以上の行のみ表示するものとする。
SELECT dno,AVG(amt)
FROM sales
GROUP BY dno
HAVING MAX(amt)-MIN(amt) >=3000

-- 10.受注(ord)表から、2005年4月14日から2005年4月17日までの間に受注した商品について、商品番号(cno)ごとの販売金額(prc)の合計が\15,000以上の行のみ表示する。
SELECT cno,SUM(prc) AS 合計
FROM ord
WHERE odate BETWEEN '2005-4-14' AND '2005-4-17'
GROUP BY cno
HAVING SUM(prc) >= 15000;
