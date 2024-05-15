-- 1.商品(com)表から、商品名(cname)が'PARKA'の担当者(sno)と同じ担当者の商品について、商品番号(cno)、商品名(cname)、および担当者番号(sno)を表示する。
SELECT cno,cname,sno
FROM com
WHERE sno IN(
  SELECT sno
  FROM com
  WHERE cname = 'PARKA'
)


-- 2.担当者(sales)表から、所在地(loc)が'YOKOHAMA'にある部門(dno)に所属する担当者について、担当者番号(sno)、担当者名(sname)、および部門名(dno)を表示する。
SELECT sno,sname,dno
FROM sales
WHERE dno IN(
  SELECT dno
  FROM dept
  WHERE dept.loc ='YOKOHAMA'
);

-- 3.商品(com)表から、担当者名(sname)'KATO'が担当する商品について、商品名(cname)'SKIRT'の単価(prc)よりも高い商品の、商品番号(cno)、商品名(cname)、単価(prc)および担当者番号(sno)を表示する。
SELECT cno,cname,prc,com.sno
FROM com


-- 4.担当者(sales)表から、売上金額(amt)が平均以上である担当者について、担当者番号(sno)、担当者名(sname)、売上金額(amt)を表示する。
SELECT sno,sname,amt
FROM sales
WHERE amt >= (SELECT AVG(amt)FROM sales);

-- 5.担当者(sales)表から、部門(dno)ごと売上金額(amt)の最大値が、すべての担当者の売上金額(amt)の平均を下回っている部門の、部門番号(dno)、および売上金額(amt)の最大値を表示する。
SELECT dno,MAX(amt)
FROM sales
GROUP BY dno
HAVING max(amt) < (SELECT AVG(amt)FROM sales);

-- 6.担当者(sales)表から、部門(dno)ごと売上金額(amt)の平均値が、部門番号(dno)11の売上金額(amt)の最小値より小さい部門について、部門番号(dno)、および売上金額(amt)の平均値を表示する。
SELECT dno,avg(amt)
FROM sales
GROUP BY dno
HAVING min(amt)< (select min(amt) FROM sales WHERE dno = 11 )

-- 7.商品(com)表から、担当者番号(sno)102の商品の単価(prc)のいずれかと等しい商品について、商品番号(cno)、商品名(cname)、単価(prc)を表示する。
select cno,cname,prc
FROM com
WHERE prc (SELECT sno from com WHERE sno = 102);
-- 8.商品(com)表から、部門番号(dno)12の担当者の担当者番号(sno)のいずれとも一致しない商品について、商品番号(cno)、商品名(cname)、単価(prc)、担当者番号(sno)を表示する。
NULL;
