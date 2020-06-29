DROP TABLE IF EXISTS bhaskara;
CREATE TABLE bhaskara(a double, b double, c double);
DECLARE a double;
CREATE PROCEDURE doiterate(p1 int) BEGIN label1 : LOOP
SET
  p1 = p1 + 1;
-- a = RAND();
  IF p1 < 10 THEN ITERATE label1;
-- DECLARE a double;
  -- SET
  --   a = RAND();
  -- DECLARE b double;
  -- SET
  --   b = RAND() * 10;
  -- DECLARE c double;
  -- SET
  --   c = RAND() * 10;
END IF;
LEAVE label1;
END LOOP label1;
SET
  @x = p1;
END;
INSERT INTO bhaskara(a, b, c)
VALUES
  (1, 2, 3),
  (4, 5, 6),
  (7, 8, 9),
  (0, 9, 8),
  (7, 6, 5),
  (4, 3, 2),
  (1, 0, 1),
  (2, 3, 4),
  (5, 6, 7),
  (8, 9, 0);