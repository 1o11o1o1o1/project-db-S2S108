-- 1.担当者(sales)表から、すべての列を表示する。
SELECT
  *
FROM
  sales;

-- 2.担当者(sales)表から、担当者番号(sno)、担当者名(sname)、および配属日(edate)を表示する。
SELECT
  sno,
  sname,
  edate
FROM
  sales;

-- 3.注文(ord)表から、商品番号(cno)を、重複行を排除して表示する。
SELECT DISTINCT
  cno
FROM
  ord;
  -- 4.注文(ord)表から、商品番号(cno)および単価(prc)を、重複行を排除して表示する。
SELECT DISTINCT
  cno,
  prc
FROM
  ord;
  -- 5.部門(dept)表から、部門番号(dno)の列見出しをDepartment Numberに、部門名(dname)の列見出しをDepartment Nameに変更して表示する。
SELECT dname as "DepartmentNAME",
dept as "DepartmentNUMBER"
FROM
  dept;

-- 6.商品(com)表から、商品番号(cno)、商品名(cname)、単価(prc)、単価(prc)に0.9を掛けた値を表示する。
SELECT cno,cname,prc,prc * 0.9
FROM com;
-- 7.担当者(sales)表から、担当者名(sname)、売上金額(amt)、および売上金額(amt)の5%の値を表示する。
SELECT sname,amt,amt * 0,05
FROM sales;
