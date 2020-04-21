--Find the country that start with Y

SELECT name FROM world
  WHERE name LIKE 'Y%'

  --Find the countries that end with y

  SELECT name FROM world
  WHERE name LIKE '%Y'

  --Find the countries that contain the letter x

  SELECT name FROM world
  WHERE name LIKE '%x%'

  --Find the countries that end with land

  SELECT name FROM world
  WHERE name LIKE '%Land'

  --Find the countries that start with C and end with ia

  SELECT name FROM world
  WHERE name LIKE 'C%%IA'

  --Find the country that has oo in the name

  SELECT name FROM world
  WHERE name LIKE '%OO%'

  --Find the countries that have three or more a in the name

  SELECT name FROM world
  WHERE name LIKE '%A%A%A%'

  --Find the countries that have "t" as the second character.

  SELECT name FROM world
  WHERE name LIKE '_T%'
  ORDER BY name

  --Find the countries that have two "o" characters separated by two others.

  SELECT name FROM world
  WHERE name LIKE '%o__o%'

  --Find the countries that have exactly four characters.

  SELECT name FROM world
  WHERE name LIKE '____'

  --Find the country where the name is the capital city.

  SELECT name
  FROM world
  WHERE name LIKE capital;

  --Find the country where the capital is the country plus "City".
  --The concat function

  SELECT name
  FROM world
  WHERE capital LIKE concat(name, ' city');

  --Find the capital and the name where the capital includes the name of the country.

  SELECT capital, name
  FROM world
  WHERE capital LIKE CONCAT('%', name, '%');
  

  --Find the capital and the name where the capital is an extension of name of the country.
  SELECT capital, name
  FROM world
  WHERE capital LIKE CONCAT(name, '%') AND capital !=name;


  --Show the name and the extension where the capital is an extension of name of the country.
  --You can use the SQL function REPLACE.

  SELECT name, REPLACE(capital, name,'') AS ext
  FROM world
  WHERE capital LIKE CONCAT(name, '%') AND capital !=name;
