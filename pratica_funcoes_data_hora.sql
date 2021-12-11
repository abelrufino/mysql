-- CURDATE()
SELECT curdate() AS 'Data Atual';

-- CURTIME()
SELECT curtime() AS 'Hora Atual';

-- CURRENT_TIME()
SELECT current_time() AS 'Hora Atual';

-- DATE_ADD(data, interval) 
SELECT date_add(curdate(), interval 3 day) AS 'Data de Vencimento';

-- DATE_SUB(data, interval)
SELECT date_sub(curdate(), interval 10 day) AS 'Data de Mátricula';

-- DATEDIFF(expre1, expre2)
SELECT datediff(curdate(), date_sub(curdate(), interval 10 day)) AS 'Dias em Atraso';

-- DATE_FORMAT
SELECT date_format(curdate(), '%d\%M\%Y') AS 'Data Atual';

SELECT date_format(curdate(), '%d\%m\%y') AS 'Data Atual';

-- DAYNAME
SELECT dayname(curdate()) AS 'Dia da Semana';

-- DAYOFMONTH
SELECT dayofmonth(curdate()) AS 'Dia do Mês';

-- DAYOFWEEK
SELECT dayofweek(curdate()) AS 'Dia da Semana';

-- DAYOFYEAR
SELECT dayofyear(curdate()) AS 'Dia do Ano';

-- FROM_DAYS
SELECT from_days(780510) AS 'Data Real';

-- NOW()
SELECT now() AS 'Data/Hora Atual';
SELECT date_format(NOW(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';
SELECT date_format(current_timestamp(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

-- Time
SELECT time(current_timestamp()) AS 'Hora';

-- TIME_TO_SEC
SELECT sec_to_time(2000) AS 'Tempo Total';

-- TIME_TO_SEC
SELECT time_to_sec(time(current_timestamp())) AS 'Em segundos';

SELECT HOUR(time(current_timestamp())) AS Hora, 
	MINUTE(time(current_timestamp())) AS Minutos, 
    SECOND(time(current_timestamp())) AS Segundos;

SELECT period_diff(201912, 201905) AS 'Meses Restantes';

SELECT TIMEDIFF('12:35:34', '12:30:46') AS Diferença;

SELECT QUARTER('2019-03-17') AS 'Trimestre do ano';

SELECT WEEK('2019-03-17') AS 'Semana do Ano';

SELECT WEEKDAY('2019-03-17') AS 'Dia da Semana';

SELECT YEAR('2019-03-17') AS 'Ano';

SELECT MONTH(NOW()) AS 'Mês';

SELECT DAY('2019-03-17') AS 'Dia';











