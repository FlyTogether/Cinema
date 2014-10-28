package com.cpp2.dao;

import java.util.List;

import com.cpp2.domain.Order;

public interface OrderDAO
{

	/**
	 * ��TB_Order�����һ������
	 * @param order
	 */
	public abstract void create(Order order);

	/**
	 * genju ������id,�����ݿ��в���Order,������
	 * @param id
	 * @return
	 */
	public abstract Order retrieve(int id);

	/**
	 * ��ȡ���ж���
	 * @return
	 */
	public abstract List<Order> getAll();

	/**
	 * ����
	 * @param order
	 */
	public abstract void update(Order order);

	public abstract void delete();

}