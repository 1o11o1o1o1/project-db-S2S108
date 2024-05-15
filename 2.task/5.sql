-- 1.担当者(sales)表と部門(dept)表を、担当者番号(dno)をもとに結合し、担当者名(sname)、売上金額(amt)、部門番号(dno)、および部門名(dname)を表示する（ON句を使用）。
SELECT sales.sname,sales.amt,sales.dno,dept.dno,dept.dname
FROM sales JOIN dept
ON sales.dno = dept.dno;

-- 2.担当者(sales)表から、上司(mgr)より売上金額(amt)が多い担当者について、担当者番号(sno)、担当者名(sname)、売上金額(amt)、上司の氏名(sname)、上司の売上金額(amt)を表示する（ON句使用して自己結合）。
SELECT S2.sno,S2.sname,S2.amt as s_amt,S1.sname AS manager,S1.amt AS m_amt
FROM sales AS S1
JOIN sales AS S2
ON S2.mgr = S1.sno
AND S2.mgr < S2.amt;


-- 3.担当者(sales)表、部門(dept)表、およびランク(rank)表を結合し、担当者番号(sno)、担当者名(sname)、売上金額(amt)、部門名(dname)、ランク(rno)を表示する(ON句を使用)。
SELECT sales.sno,sales.sname,sales.amt,dept.dname,rank.rno
FROM sales
JOIN dept
ON sales.dno = dept.dno
JOIN rank
ON sales.amt <= hamt AND sales.amt >=  rank.lamt

-- 4.担当者(sales)表と部門(dept)表を結合し、担当者番号(sno)、担当者名(sname)、部門名(dname)、および所在地(loc)を表示する。なお、担当者(sales)表について結合条件を満足しない行も戻す（右側外部結合を使用）。
SELECT sales.sno,sales.sname,dept.dname,dept.loc
FROM dept RIGHT OUTER JOIN sales
ON sales.dno = dept.dno;

-- 5.商品(com)表と注文(ord)表を結合し、商品番号(cno)、商品名(cname)、単価(prc)、注文番号(ono)、および販売金額(prc)を、注文番号(ono)の昇順に表示する。なお、商品(com)表について結合条件を満足しない行も戻す（左側外部結合を使用）。
SELECT com.cno,com.cname,com.prc,ord.ono,ord.prc
FROM com LEFT OUTER JOIN ord
ON com.cno = ord.cno
ORDER BY ono;
-- 6.担当者(sales)表と部門(dept)表を結合し、担当者番号(sno)、担当者名(sname)、部門名(dname)、および所在地(loc)を表示する。なお、担当者(sales)表、部門(dept)表ともに、結合条件を満足しない行も戻す（完全外部結合を使用）。
SELECT sales.sno,sales.sname,dept.dname,dept.loc
FROM sales
FULL OUTER JOIN dept
ON sales.dno = dept.dno;
-- 7.注文(ord)表から、販売金額(prc)が、商品(com)表の単価(prc)より少ない注文データについて、注文番号(ono)、商品番号(cno)、販売金額(prc)、および単価(prc)を、注文番号(ono)の昇順に表示する（ON句を使用）。
SELECT ord.ono,ord.cno,ord.prc AS "販売額",com.prc AS "単価"
FROM ord
JOIN com
ON ord.cno = com.cno
WHERE ord.prc < com.prc
ORDER BY ono;

-- 8.商品(com)表と担当者(sales)を、担当者番号(sno)表をもとに結合し、単価(prc)が\10,000以上の商品について、商品番号(cno)、商品名(cname)、単価(prc)、および担当者名(sname)を表示する(ON句を使用)。
SELECT com.cno,com.cname,com.prc,sales.sname
FROM com
JOIN sales
ON com.sno = sales.sno
WHERE com.prc >= 10000;

-- 9.担当者(sales)表、部門(dept)表、および商品(com)表を結合し、担当者名(sname)、部門番号(dno)、部門名(dname)、および商品名(cname)を表示する。なお、所属する担当者がいない部門についても表示し、担当商品を持たない担当者についても表示するものとする。
SELECT sales.sname,sales.dno,dept.dname,com.cname
FROM sales
RIGHT OUTER JOIN dept
ON sales.dno = dept.dno
LEFT OUTER JOIN com
ON com.sno = sales.sno;
