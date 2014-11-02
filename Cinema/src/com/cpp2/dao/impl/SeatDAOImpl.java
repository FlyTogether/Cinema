package com.cpp2.dao.impl;

import org.apache.commons.dbutils.QueryRunner;

import com.cpp2.utils.JDBCUtils;

public class SeatDAOImpl {
	/**
	 * 根据排期id删除该排期的所有座位
	 * @param schedule_id
	 */
	public void deleteSeatBySchedule(int schedule_id){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "delete from tb_seat_schedule where Schedule_id=?";
			qr.update(sql, schedule_id);
			}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * 购票时选择座位
	 * @param id
	 */
	public void orderSeat(int id){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "update tb_seat_schedule set State='已售出' where id=?";
			qr.update(sql, id);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
}
