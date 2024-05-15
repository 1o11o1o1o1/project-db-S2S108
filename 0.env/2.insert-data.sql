-- DELETE
-- DELETE FROM ORD;
-- DELETE FROM LORD;
-- DELETE FROM ORD050414;
-- DELETE FROM COM;
-- DELETE FROM RANK;
-- DELETE FROM SALES;
-- DELETE FROM SALES2;
-- DELETE FROM DEPT;
-- DELETE FROM DEPT2;
-- DELETE FROM P66;
-- COMMIT;
-- INSERT
INSERT INTO
  DEPT
VALUES
  (11, 'MENS', 'TOKYO');

INSERT INTO
  DEPT
VALUES
  (12, 'LADIES', 'YOKOHAMA');

INSERT INTO
  DEPT
VALUES
  (13, 'SHOES', 'FUKUOKA');

INSERT INTO
  DEPT
VALUES
  (14, 'BAGS', 'NAGOYA');

INSERT INTO
  DEPT
VALUES
  (15, 'ACCESSORIES', 'OSAKA');

INSERT INTO
  SALES
VALUES
  (
    101,
    'YAMADA',
    11,
    NULL,
    222000,
    TO_DATE('1998-04-01', 'yyyy-mm-dd')
  );

INSERT INTO
  SALES
VALUES
  (
    102,
    'SATO',
    12,
    NULL,
    294500,
    TO_DATE('1999-05-15', 'yyyy-mm-dd')
  );

INSERT INTO
  SALES
VALUES
  (
    103,
    'SUZUKI',
    13,
    NULL,
    10500,
    TO_DATE('1997-09-20', 'yyyy-mm-dd')
  );

INSERT INTO
  SALES
VALUES
  (
    104,
    'TANAKA',
    14,
    NULL,
    420000,
    TO_DATE('1999-07-10', 'yyyy-mm-dd')
  );

INSERT INTO
  SALES
VALUES
  (
    105,
    'KATO',
    12,
    102,
    480000,
    TO_DATE('2002-12-25', 'yyyy-mm-dd')
  );

INSERT INTO
  SALES
VALUES
  (
    106,
    'NAKAMURA',
    11,
    101,
    365000,
    TO_DATE('2003-10-01', 'yyyy-mm-dd')
  );

INSERT INTO
  SALES
VALUES
  (
    107,
    'KOJIMA',
    12,
    102,
    NULL,
    TO_DATE('2004-04-01', 'yyyy-mm-dd')
  );

INSERT INTO
  SALES
VALUES
  (108, 'SASAKI', NULL, NULL, NULL, NULL);

INSERT INTO
  RANK
VALUES
  ('A', 0, 99999);

INSERT INTO
  RANK
VALUES
  ('B', 100000, 199999);

INSERT INTO
  RANK
VALUES
  ('C', 200000, 299999);

INSERT INTO
  RANK
VALUES
  ('D', 300000, 399999);

INSERT INTO
  RANK
VALUES
  ('E', 400000, 499999);

INSERT INTO
  RANK
VALUES
  ('F', 500000, 599999);

INSERT INTO
  RANK
VALUES
  ('G', 600000, 699999);

INSERT INTO
  RANK
VALUES
  ('H', 700000, 799999);

INSERT INTO
  RANK
VALUES
  ('I', 800000, 899999);

INSERT INTO
  RANK
VALUES
  ('J', 900000, 999999);

INSERT INTO
  COM
VALUES
  (1001, 'SKIRT', 10000, 102);

INSERT INTO
  COM
VALUES
  (1002, 'BLAZER_MEN', 40000, 106);

INSERT INTO
  COM
VALUES
  (1003, 'BLAZER_LADIES', 35000, 105);

INSERT INTO
  COM
VALUES
  (1004, 'SHIRTS_MEN', 3000, 101);

INSERT INTO
  COM
VALUES
  (1005, 'SHIRTS_LADIES', 2000, 102);

INSERT INTO
  COM
VALUES
  (1006, 'PANTS_MEN', 20000, 101);

INSERT INTO
  COM
VALUES
  (1007, 'PANTS_LADIES', 15000, 107);

INSERT INTO
  COM
VALUES
  (1008, 'HANDKERCHIEF', 1500, 102);

INSERT INTO
  COM
VALUES
  (1009, 'PARKA', 4500, 106);

INSERT INTO
  COM
VALUES
  (1010, 'CARDIGAN', 3000, 105);

INSERT INTO
  COM
VALUES
  (1011, 'JACKET', 30000, 102);

INSERT INTO
  COM
VALUES
  (1012, 'SHOULDER_BAG', 6000, 104);

INSERT INTO
  COM
VALUES
  (1013, 'CAP_MEN', 3000, 101);

INSERT INTO
  COM
VALUES
  (1014, 'CAP_LADIES', 4000, 107);

INSERT INTO
  COM
VALUES
  (1015, 'NECKTIE', 1500, 101);

INSERT INTO
  COM
VALUES
  (1016, 'SNEAKERS', 3500, 103);

INSERT INTO
  COM
VALUES
  (1017, 'RAINCOAT', 5500, 105);

INSERT INTO
  COM
VALUES
  (1018, 'SOCKS_MEN', 1000, 101);

INSERT INTO
  COM
VALUES
  (1019, 'SOCKS_LADIES', 1500, 102);

INSERT INTO
  COM
VALUES
  (1020, 'WALLET', 900, 104);

INSERT INTO
  ORD
VALUES
  (
    1,
    1001,
    'S',
    1,
    9000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    2,
    1002,
    'M',
    2,
    40000,
    TO_DATE('2005-04-15', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    3,
    1001,
    'M',
    1,
    10000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    4,
    1004,
    'L',
    2,
    3000,
    TO_DATE('2005-04-16', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    5,
    1003,
    'S',
    3,
    30000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    6,
    1005,
    'M',
    1,
    2000,
    TO_DATE('2005-04-15', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    7,
    1001,
    'M',
    2,
    10000,
    TO_DATE('2005-04-16', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    8,
    1002,
    'L',
    3,
    45000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    9,
    1003,
    'S',
    4,
    30000,
    TO_DATE('2005-04-17', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    10,
    1004,
    'M',
    1,
    3000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    11,
    1001,
    'L',
    2,
    12000,
    TO_DATE('2005-04-16', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    12,
    1016,
    NULL,
    3,
    3500,
    TO_DATE('2005-04-17', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    13,
    1012,
    NULL,
    4,
    6000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    14,
    1003,
    'L',
    5,
    40000,
    TO_DATE('2005-04-18', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    15,
    1004,
    'S',
    1,
    3000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    16,
    1005,
    'L',
    2,
    2000,
    TO_DATE('2005-04-19', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    17,
    1012,
    NULL,
    3,
    6000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    18,
    1001,
    'M',
    4,
    10000,
    TO_DATE('2005-04-18', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    19,
    1008,
    'M',
    5,
    1500,
    TO_DATE('2005-04-19', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    20,
    1001,
    'S',
    6,
    9000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    21,
    1003,
    'M',
    1,
    35000,
    TO_DATE('2005-04-20', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    22,
    1002,
    'M',
    2,
    40000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    23,
    1006,
    'M',
    3,
    20000,
    TO_DATE('2005-04-21', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    24,
    1005,
    'L',
    4,
    2000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    25,
    1005,
    'S',
    5,
    2000,
    TO_DATE('2005-04-20', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    26,
    1006,
    'L',
    6,
    25000,
    TO_DATE('2005-04-21', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    27,
    1001,
    'M',
    7,
    10000,
    TO_DATE('2005-04-14', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    28,
    1003,
    'M',
    1,
    35000,
    TO_DATE('2005-04-15', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    29,
    1002,
    'S',
    2,
    35000,
    TO_DATE('2005-04-16', 'yyyy-mm-dd')
  );

INSERT INTO
  ORD
VALUES
  (
    30,
    1001,
    'L',
    3,
    12000,
    TO_DATE('2005-04-17', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    1,
    1002,
    'S',
    1,
    40000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    2,
    1003,
    'S',
    1,
    35000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    3,
    1004,
    'S',
    1,
    10000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    4,
    1005,
    'S',
    1,
    2000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    5,
    1006,
    'S',
    1,
    10000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    6,
    1007,
    'S',
    1,
    15000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    7,
    1008,
    'S',
    1,
    10000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    8,
    1009,
    'S',
    1,
    10000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    9,
    1010,
    'S',
    1,
    3000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  LORD
VALUES
  (
    10,
    1001,
    'S',
    1,
    10000,
    TO_DATE('2005-09-01', 'yyyy-mm-dd')
  );

INSERT INTO
  P66
VALUES
  ('東京都新宿区', '東京都新宿区');

INSERT INTO
  P66
VALUES
  ('Tokyo', 'Tokyo');

INSERT INTO
  P66
VALUES
  ('北海道', '北海道');

INSERT INTO
  Shohin
VALUES
  ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');

INSERT INTO
  Shohin
VALUES
  ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');

INSERT INTO
  Shohin
VALUES
  ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);

INSERT INTO
  Shohin
VALUES
  ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');

INSERT INTO
  Shohin
VALUES
  ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');

INSERT INTO
  Shohin
VALUES
  ('0006', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20');

INSERT INTO
  Shohin
VALUES
  ('0007', 'おろしがね', 'キッチン用品', 880, 790, '2008-04-28');

INSERT INTO
  Shohin
VALUES
  ('0008', 'ボールペン', '事務用品', 100, NULL, '2009-11-11');

INSERT INTO
  SampleLike (strcol)
VALUES
  ('abcddd');

INSERT INTO
  SampleLike (strcol)
VALUES
  ('dddabc');

INSERT INTO
  SampleLike (strcol)
VALUES
  ('abdddc');

INSERT INTO
  SampleLike (strcol)
VALUES
  ('abcdd');

INSERT INTO
  SampleLike (strcol)
VALUES
  ('ddabc');

INSERT INTO
  SampleLike (strcol)
VALUES
  ('abddc');

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000A', '東京', '0001', 30);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000A', '東京', '0002', 50);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000A', '東京', '0003', 15);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000B', '名古屋', '0002', 30);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000B', '名古屋', '0003', 120);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000B', '名古屋', '0004', 20);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000B', '名古屋', '0006', 10);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000B', '名古屋', '0007', 40);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000C', '大阪', '0003', 20);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000C', '大阪', '0004', 50);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000C', '大阪', '0006', 90);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000C', '大阪', '0007', 70);

INSERT INTO
  TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo)
VALUES
  ('000D', '福岡', '0001', 100);

INSERT INTO
  Shohin2
VALUES
  ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');

INSERT INTO
  Shohin2
VALUES
  ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');

INSERT INTO
  Shohin2
VALUES
  ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);

INSERT INTO
  Shohin2
VALUES
  ('0009', '手袋', '衣服', 800, 500, NULL);

INSERT INTO
  Shohin2
VALUES
  ('0010', 'やかん', 'キッチン用品', 2000, 1700, '2009-09-20');

INSERT INTO
  GRADE
VALUES
  ('C', 0, 999);

INSERT INTO
  GRADE
VALUES
  ('B', 1000, 4999);

INSERT INTO
  GRADE
VALUES
  ('A', 5000, 99999);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0001', 0);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0002', 120);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0003', 200);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0004', 3);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0005', 0);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0006', 99);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0007', 999);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S001', '0008', 200);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0001', 10);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0002', 25);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0003', 34);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0004', 19);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0005', 99);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0006', 0);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0007', 0);

INSERT INTO
  ZaikoShohin (souko_id, shohin_id, zaiko_suryo)
VALUES
  ('S002', '0008', 18);

COMMIT;
