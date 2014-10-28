package com.cpp2.dao;

import java.util.List;

import com.cpp2.domain.User;

public interface UserDAO {

	/**
	 * 向tb_user 增加一条记录
	 * @param user
	 */
	public abstract void create(User user);

	/**
	 * 根据id删除tb_user的一条记录
	 * @param id
	 */
	public abstract void delete(int id);

	/**
	 * modify tb_user
	 * @prama user
	 */
	public abstract void update(User user);

	/**
	 * 根据id查找用户
	 * @param id
	 * @return
	 */
	public abstract User retrieve(int id);

	/**
	 * 根据用户名和密码查找用户
	 * @param username
	 * @param password
	 * @return
	 */
	public abstract User retrieve(String username, String password);

	/**
	 * 获取所有用户
	 * @return
	 */
	public abstract List<User> getAll();
	
	/**
	 * 获取所有用户在数据库中的总数据
	 * @return
	 */
	public int getTotalRecord();

	/**
	 * 获得用户分页数据
	 * @param beginIndex
	 * @param everyPage
	 * @return
	 */
	public List<User> getAllUserPageDate(int beginIndex,int everyPage);
	
	/**
	 * 用户修改密码
	 * @param newpassword
	 * @param id
	 */
	public abstract void changePassword(String newpassword, int id);

}