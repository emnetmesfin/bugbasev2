mysql -fN <<SQL
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.12345678901234567890123456789012345));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.123456789012345678901234567890123456));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.1234567890123456789012345678901234567));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.12345678901234567890123456789012345678));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.123456789012345678901234567890123456789));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.1234567890123456789012345678901234567890));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.12345678901234567890123456789012345678901));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.123456789012345678901234567890123456789012));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.1234567890123456789012345678901234567890123));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.12345678901234567890123456789012345678901234));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.123456789012345678901234567890123456789012345));
SELECT COLUMN_JSON(COLUMN_CREATE('x', 0.1234567890123456789012345678901234567890123467));
SQL
{"x":0.12345678901234567890123456789012345}
{"x":0.123456789012345678901234567890123456}
{"x":0.1234567890123456789012345678901234567}
{"x":0.12345678901234567890123456789012345670}
{"x":0.123456789012345678901234567890123456700}
{"x":0.1234567890123456789012345678901234567000}
{"x":0.12345678901234567890123456789012345670000}
{"x":0.123456789012345678901234567890123456700000}
{"x":0.1234567890123456789012345678901234567000000}
{"x":0.12345678901234567890123456789012345670000000}
{"x":0.123456789012345678901234567890123456700000000}