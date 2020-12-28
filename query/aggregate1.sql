-- Выбираем количество работников в автосалоне с id = 42 --
select count(*) amount_of_employee 
from employee 
where work_place_id = 42;

-- Выбираем сколько зарплаты нужно выдать всем работникам, у которых должность consultant --
select count(*) employees, sum(`position`.salary) total_salary 
from `employee`
join `position` on `position`.id = `employee`.position_id
where `position`.position = 'consultant';

-- Средний объем бензобака моделей автомобиля объем двигателя которых больше 2.8 литров и меньше 3.5 --
select cast(avg(m.fuel_capacity) as decimal(6,2)) avg_fuel_capacity 
from `model` m
join `car` car on car.model_id = m.id
join `engine` eng on eng.id = car.engine_id
where eng.engine_volume between 2.8 and 3.5;

-- Выбрать количество всех сервисов в регионе Nevada--
 select count(*) 
 from service
 join address on address.id = service.address_id
 where region = 'Nevada';

-- Вывести работников, которые проработали в концерне не менее 5 лет-- 
select concat(em.firstname, ' ', em.surname, ' ', em.lastname) fio, pos.position, start_time, end_time
from employee_chronology em_ch
join employee em on em.id = em_ch.employee_id 
join position pos on pos.id = em_ch.position_id
where start_time > '2012-01-01' and datediff(end_time, start_time) > 365 * 5; 

-- Выбрать общую сумму услуг, которые были куплены клиентом с наибольшим числом записей на сервис --
select concat(cl.first_name, ' ', cl.last_name, ' ', cl.patronymic) `client`, sum(total_cost) total_cost
from service_sign_up ssu
join `client` cl on cl.id =  ssu.client_id
where client_id = (select max(total) max 
from (select count(client_id) total
from service_sign_up 
group by client_id)
result);

-- Выбрать количество автомобилей в комплектации которого есть кондиционер и гидроусилитель--
select count(*) count
from car c
join complectation com on c.complectation_id = com.id
join privod_of_steering_wheel p on p.id = com.privod_id
where com.conditioner = 1 and p.privod_type = 'electro';

-- Найти максимальную и минимальную зарплату работников работающих в помещении с id = 5--
select min(salary) min_salary, max(salary) max_salary
from employee as emp
join work_place on emp.work_place_id = work_place.id
join position as pos on pos.id = emp.position_id
where work_place.id = 5;

-- Выбрать количество записей на драйв, в которых участвовал работник с id = в период не позже 3 марта 2005 года--
select emploee_id, count(emploee_id) as count_of_drives from drive_sign_up 
where emploee_id = 122 and date < '2005-03-03';

-- найти среднее соотношение лошадиных сил к расходу топлива и максимальную цену автомобиля
-- соотношение этих параметров которого меньше или равно этому значению--
select max(car.price) as max_price, @a as avg_power_to_fuel_compustion from car
join engine as eng on eng.id = car.engine_id
where eng.power/eng.fuel_consumption <=
(select @a:= (avg(eng.power)/avg(eng.fuel_consumption))from car
left join engine as eng on eng.id = car.engine_id);