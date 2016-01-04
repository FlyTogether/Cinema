create procedure insertIntoSeat(in schedule_id int)
begin 
      declare i int;
      declare num int;
      set i=1;
      set num=60;
      while i<=num do
            insert into tb_seat_schedule(State,Schedule_id,Number) values('未售出',schedule_id,i);
            set i = i+1;
     end while;
end
