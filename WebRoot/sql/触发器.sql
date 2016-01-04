create trigger tg_insertDataIntoSeat 
after insert on tb_schedule
for each row 
begin 
      call insertIntoSeat(new.id);
end