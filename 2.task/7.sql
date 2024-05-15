-- 1.受注(ord)表および旧受注(lord)表の商品番号(cno)およびサイズ(std)を、重複行を除いて表示する。
SELECT cno,std
FROM ord
UNION
SELECT cno,std
FROM lord

-- 2.受注(ord)表および旧受注(lord)表の商品番号(cno)および販売金額(prc)を、重複行を除かずに表示する。
SELECT cno,prc
FROM ord
UNION ALL
SELECT cno,prc
FROM lord
