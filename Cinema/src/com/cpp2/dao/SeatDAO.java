package com.cpp2.dao;

public interface SeatDAO {

	/**
	 * ��������idɾ�������ڵ�������λ
	 * @param schedule_id
	 */
	public abstract void deleteSeatBySchedule(int schedule_id);

	/**
	 * ��Ʊʱѡ����λ
	 * @param id
	 */
	public abstract void orderSeat(int id);

}