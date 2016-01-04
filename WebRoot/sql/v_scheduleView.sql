create view v_scheduleView(schedule_id,airtime,remanent,
                           movie_id,movie_name,movie_style,movie_language,movie_price,
                           cinema_id,cinema_name,cinema_address,cinema_phone,
                           videohall_name)
as
  select tb_schedule.id,tb_schedule.Airtime,tb_schedule.Remanent,
         tb_movie.id,tb_movie.name,tb_movie.style,tb_movie.language,tb_movie.price,
         tb_cinema.id,tb_cinema.name,tb_cinema.address,tb_cinema.phone,
         tb_videohall.name
  from tb_schedule,tb_movie,tb_cinema,tb_videohall
  where tb_schedule.VideoHall_id=tb_videohall.id and tb_schedule.Movie_id=tb_movie.id and tb_videohall.Cinema_id=tb_cinema.id
  with check option
