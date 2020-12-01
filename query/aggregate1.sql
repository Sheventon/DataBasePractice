-- Выбираем количество работников в автосалоне с id = 53 --
select count(*) from employee where car_showroom_id = 53;

-- Выбираем сколько зарплаты нужно выдать всем работникам, у которых должность с id = 23 --
select count(*) as empleyees, sum(`salary`.salary_size) as totl_salary from `employee` 
left join `position` on `position`.id = `employee`.position_id
left join `salary` on `position`.id = `salary`.position_id where `employee`.position_id = 23;

-- Средний объем бензобака моделей автомобиля объем двигателя которых больше 2.8 литров и меньше 3.5 --
select avg(m.fuel_capacity) from `model` as m
join `car` as car on car.model_id = m.id
join `engine` as eng on eng.id = car.engine_id
where eng.engine_volume between 2.8 and 3.5;

-- Выбрать количество всех сервисов в регионе Nevada--
 select count(*) from service
 join address on address.id = service.address_id
 where region = 'Nevada';

-- Выбрать общую цену машин с id = 84, которые были куплены--
select count(car_id), sum(price) from car
join buy on car.id = buy.car_id
where car.id = 84; 

-- Выбрать общую сумму услуг, купленных в сервисе с id = 60--
select service_id, sum(prl.price) as full_price from service_sign_up as ssu
left join price_list as prl on ssu.usluga_id = prl.usluga_id  
where service_id = 60;

-- Выбрать количество автомобилей в комплектации которого есть кондиционер и гидроусилитель--
select count(*) from car as c
join complectation as com on c.complectation_id = com.id
join privod as p on p.id = com.privod_id
where com.conditioner = 1 and p.privod_type = 'gidro';

-- Найти максимальную и минимальную зарплату работника работающего в таком то салоне--
select min(salary_size) as min_salary, max(salary_size) as max_salary
from employee as emp
join position as pos on pos.id = emp.position_id
join salary as sal on sal.position_id = pos.id
where emp.car_showroom_id = 53;

-- Выбрать количество записей на драйв, в которых участвовал работник с id = в период не позже 3 марта 2005 года--
select emploee_id, count(emploee_id) as count_of_drives from drive 
where emploee_id = 122 and date < '2005-03-03';

-- найти среднее соотношение лошадиных сил к расходу топлива и максимальную цену автомобиля
-- соотношение этих параметров которого меньше или равно этому значению--
select max(car.price) as max_price, @a as avg_power_to_fuel_compustion from car
join engine as eng on eng.id = car.engine_id
where eng.power/eng.fuel_consumption <=
(select @a:= (avg(eng.power)/avg(eng.fuel_consumption))from car
left join engine as eng on eng.id = car.engine_id);
