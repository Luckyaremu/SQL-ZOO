--Change the query shown so that it displays Nobel prizes for 1950.

 SELECT yr, subject, winner
 FROM nobel
 WHERE yr = 1950

 --Show who won the 1962 prize for Literature.

 SELECT winner
 FROM nobel
 WHERE yr = 1962
 AND subject = 'Literature'


 --Show the year and subject that won 'Albert Einstein' his prize.

 SELECT yr, 
 subject FROM nobel
 WHERE winner = 'Albert Einstein';

 --Give the name of the 'Peace' winners since the year 2000, including 2000.

 SELECT winner
 FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000;

 --how all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

 SELECT yr, subject, winner
 FROM nobel
 WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989

 --Show all details of the presidential winners: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama;

 SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                    'Barack Obama')

--Show the winners with first name John

 SELECT winner
 FROM nobel
 WHERE winner LIKE 'JOHN%'

 --Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

 SELECT yr, subject, winner FROM nobel
 WHERE (subject='Physics' AND yr=1980) XOR (subject='Chemistry' AND yr=1984);

 --Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

 SELECT yr, subject, winner FROM nobel
 WHERE yr=1980 AND subject != 'Chemistry'AND subject !='Medicine';

 --Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

 SELECT yr, subject, winner FROM nobel
 WHERE subject='Medicine' AND yr BETWEEN 0 AND 1909 XOR subject='Literature' AND yr BETWEEN 2004 AND 2020;

 --Find all details of the prize won by PETER GRÜNBERG :Non-ASCII characters

 SELECT yr, subject, winner FROM nobel
 WHERE winner='PETER GRÜNBERG';

 12.
 --Find all details of the prize won by EUGENE O'NEILL :Escaping single quotes

 SELECT yr, subject, winner FROM nobel
 WHERE winner="EUGENE O'NEILL";

 --List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

 SELECT winner, yr, subject FROM nobel
 WHERE winner LIKE 'Sir%';

 --Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

 SELECT winner, subject
 FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner;
