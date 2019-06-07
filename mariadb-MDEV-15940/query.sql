DELIMITER $$
BEGIN NOT ATOMIC
  DECLARE v INT;
  DECLARE cur CURSOR FOR VALUES(7);
  OPEN cur;
  FETCH cur INTO v;
  SELECT v;
END; 
$$
DELIMITER $$;