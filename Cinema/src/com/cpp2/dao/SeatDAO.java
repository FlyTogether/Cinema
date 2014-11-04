package com.cpp2.dao;

public interface SeatDAO {

	/**
	 * 根据排期id删除该排期的所有座位
	 * @param schedule_id
	 */
	public abstract void deleteSeatBySchedule(int schedule_id);

	/**
	 * 购票时选择座位
	 * @param id
	 */
	public abstract void orderSeat(int id);

}