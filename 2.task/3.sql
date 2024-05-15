-- 1.担当者(sales)表から、担当者番号(sno)が106である担当者の情報を表示する。
SELECT *
FROM sales
WHERE sno = 106

-- 2.商品(com)表から、商品名(cname)が'JACKET'である商品の、商品番号(cno)、商品名(cname)、および単価(prc)を表示する。
SELECT cno,cname,prc
FROM com
WHERE cname = 'JACKET'

-- 3.注文表(ord)表から、受注日(odate)が'05-04-14'の注文データについて、受注番号(ono)、商品番号(cno)、および販売価格(prc)を表示する。
SELECT ono,cno,prc
FROM ord
WHERE odate = '05-04-14'

-- 4.注文(ord)表から、受注日(odate)が'05-04-19'以降の注文データについて、受注番号(ono)、商品番号(cno)、および受注日(odate)を表示する。
SELECT ono,cno,odate
FROM ord
WHERE odate >= '05-04-19'

-- 5.商品(com)表から、単価(prc)が\5,000～\10,000である商品の、商品番号(cno)、商品名(cname)、および単価(prc)を表示する。
SELECT cno,cname,prc
FROM com
WHERE prc >= 5000 AND prc <=10000;

-- 6.注文(ord)表から、受注日(odate)が'05-04-15'から'05-04-18'の注文データについて、受注番号(ono)、商品番号(cno)、および受注日(odate)を表示する。
SELECT ono,cno,odate
FROM ord
WHERE odate BETWEEN '05-04-15'AND '05-04-18'

-- 7.商品(com)表から、商品名(cname)が'PARKA'から'SNEAKERS'までの商品について、商品名(cname)、および単価(prc)を表示する。
SELECT cname,prc
FROM com
WHERE cname BETWEEN 'PARKA'AND 'SNEAKERS';

-- 8.商品(com)表から、商品名(cname)が'SKIRT'、'SOCKS_MEN'、または'WALLET'である商品の、商品番号(cno)、商品名(cname)、および単価(prc)を表示する。

SELECT cno,cname,prc
FROM com
WHERE cname IN('SKIRT','SOCKS_MEN','WALLET');

-- 9.担当者(sales)表から、担当者番号(sno)が101,103,または105の担当者について、担当者番号(sno)、担当者名(sname)、および配属日(edate)を表示する。
SELECT sno,sname,edate
FROM sales
WHERE sno IN(101,103,105);

-- 10.従業員(sales)表から、担当者名(sname)の2文字目が「A」で最後が「O」で終わる担当者名を表示する。
SELECT sname
FROM sales
WHERE sname LIKE '_A%O';

-- 11.従業員(sales)表から、売上金額(amt)がNULL値である担当者名(sname)を表示する。

SELECT sname
FROM sales
WHERE amt ISNULL;
-- 12.商品(com)表から、単価(prc)が5000以上で、商品名(cname)が「MEN」で終わる商品の、商品名(cname)、単価(prc)、および担当者番号(sno)を表示する。

SELECT cname,prc,sno
FROM com
WHERE prc >= 5000 AND cname LIKE '%MEN';
-- 13.従業員(sales)表から、従業員名(sname)が「SA」または「KA」で始まり、売上金額(amt)が\300,000以上の従業員名(sname) を表示する。
SELECT sname
FROM sales
WHERE (sname LIKE 'SA%'OR sname LIKE 'KA%') AND amt >= 300000;

-- 14.商品(com)表から、担当者番号(sno)が101,103,105以外の商品について、商品名(cname)、単価(prc)、および担当者番号(sno)を表示する。

SELECT cname,prc,sno
FROM com
WHERE sno NOT IN (101,103,105);
-- 15.担当者(sales)表から、担当者名(sname)が「K」または「T」以外で始まり、上司(MGR)がNULLでない担当者の、担当者名(sname)および上司(mgr)を表示する。
SELECT sname,mgr
FROM sales
WHERE sname NOT LIKE 'K%' AND sname NOT LIKE 'T%'AND MGR IS NOT NULL;

-- 16.担当者(sales)表から、売上金額(amt)の少ない順に、担当者名(sname)、および売上金額(amt)を表示する。
SELECT sname,amt
FROM sales
ORDER BY amt

-- 17.担当者(sales)表から、担当者番号(sno)、担当者名(sname)、および売上金額(amt)の12倍(列別名：amount)を、売上金額の12倍の降順にソートして表示する。
SELECT sno,sname,amt * 12 AS amount
FROM sales
ORDER BY amount DESC;

-- 18.担当者(sales)表から、部門番号(dno)が12の、担当者名(sname)および売上金額(amt)を、配属日(edate)順に表示する。
SELECT sname,amt
FROM sales
WHERE dno = 12
ORDER BY edate;
-- 19.担当者(sales)表から、売上金額が\200,000以上の担当者の、担当者番号(sno)、担当者名(sname)、部門番号(dno)、および売上金額(amt)を、部門番号(dno)の昇順に表示する。なお、同じ部門番号のデータについては、売上金額(amt)の降順に表示する。
SELECT sno,sname,dno,amt
FROM sales
WHERE amt >=200000
ORDER BY dno,amt DESC
