CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
insert into pot1 select avg(AccX) as AccX,avg(AccY) as AccY,avg(AccZ) as AccZ,longitude,latitude from potholedata group by latitude, longitude;
insert into pot2 select * from pot1 where AccY>=0.9 or AccY<=-0.9;
END