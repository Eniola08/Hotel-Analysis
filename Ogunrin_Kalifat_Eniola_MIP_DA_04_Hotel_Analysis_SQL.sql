
select * from [Hotel Reservation].[dbo].[Hotel Reservation Dataset]

-- What is the total number of reservations in the dataset?

select count(Booking_ID) as number_of_reservations
from [Hotel Reservation].[dbo].[Hotel Reservation Dataset]

--Which meal plan is the most popular among guests?

select top 1 type_of_meal_plan, count(type_of_meal_plan) as no_of_times_used
from [Hotel Reservation].[dbo].[Hotel Reservation Dataset] 
group by type_of_meal_plan
order by no_of_times_used desc


 --What is the average price per room for reservations involving children?

 select Booking_ID, no_of_children, avg_price_per_room, room_type_reserved
 from [Hotel Reservation].[dbo].[Hotel Reservation Dataset]
 where no_of_children >0

 select avg(avg_price_per_room)
 from [Hotel Reservation].[dbo].[Hotel Reservation Dataset]
 where no_of_children > 0

-- How many reservations were made for the year 2018?
select top 1 room_type_reserved,  count(room_type_reserved) as no_of_times_booked