package com.cpp2.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 订单实体
 * @author Rose
 */
public class Order
{
	private int id;
	private Date orderTime;
	private double price;
	private boolean state;													// 标识发货状态
	private User user;
	private Set<OrderItem> orderItem = new HashSet(); 	// 订单项
	
	public Date getOrderTime()
	{
		return orderTime;
	}
	public void setOrderTime(Date orderTime)
	{
		this.orderTime = orderTime;
	}
	public User getUser()
	{
		return user;
	}
	public void setUser(User user)
	{
		this.user = user;
	}
	public Set<OrderItem> getOrderItem()
	{
		return orderItem;
	}
	public void setOrderItem(Set<OrderItem> orderItem)
	{
		this.orderItem = orderItem;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public double getPrice()
	{
		return price;
	}
	public void setPrice(double price)
	{
		this.price = price;
	}
	public boolean isState()
	{
		return state;
	}
	public void setState(boolean state)
	{
		this.state = state;
	}
	
}
