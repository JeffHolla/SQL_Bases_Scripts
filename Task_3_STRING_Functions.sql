-- 5. Запросы с использованием функций для  работы со строками   (
--    REPLACE, SUBSTRING, STUFF, STR, UNICODE, LOWER, UPPER и т.п. )

----------- REPLACE -----------
--SELECT Driver.[Name], REPLACE(Driver.[Name], 'Дми', 'Але') ReplacedName
--FROM Driver

----------- SUBSTRING -----------
--SELECT Driver.[Name], SUBSTRING(Driver.[Name], 2, 4) ReplacedName
--FROM Driver

----------- STUFF -----------
--SELECT Driver.[Name], STUFF(Driver.[Name], 2, 4, 'Hehe') ReplacedName
--FROM Driver

----------- STR -----------
--SELECT [Order].Id, [Order].Price,
--STR(CONVERT(float, [Order].Price) + 0.52, 10, 3) StringifiedPrice,
--STR(CONVERT(float, [Order].Price) + 0.52, 10, 0) RoundedStringifiedPrice,
--STR([Order].Price, 3, 0) StarsStringifiedPrice
--FROM [Order]

----------- UNICODE -----------
--SELECT UNICODE('A') UnicodeOfA

--SELECT Driver.[Name], UNICODE(SUBSTRING(Driver.[Name], 1, 1)) UnicodeOfFirstChar
--FROM Driver

----------- LOWER -----------
SELECT Driver.[Name], LOWER(Driver.[Name]) ToLowerName
FROM Driver

----------- UPPER -----------
SELECT Driver.[Name], UPPER(Driver.[Name]) ToUpperName
FROM Driver