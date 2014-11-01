package com.cpp2.dao;

import java.util.List;

import com.cpp2.domain.User;

public interface UserDAO
{

	/**
	 * ��tb_user ����һ����¼
	 * @param user
	 */
	void create(User user);

	/**
	 * ���idɾ��tb_user��һ����¼
	 * @param id
	 */
	void delete(int id);

	/**
	 * modify tb_user
	 * @prama user
	 */
	void update(User user);

	/**
	 * ���id�����û�
	 * @param id
	 * @return
	 */
	User retrieve(int id);

	/**
	 * ����û������������û�
	 * @param username
	 * @param password
	 * @return
	 */
	//用户名获取
	User retrieveFromUsername(String username, String password);
	//邮箱名获取
	User retrieveFromEmail(String email, String password);
	//手机号获取
	User retrieveFromPhone(String phone, String password);

	/**
	 * ��ȡ�����û�
	 * @return
	 */
	List<User> getAll();

	void updatePassword(String newpassword, int id);

	List<User> getAllUserPageDate(int beginIndex, int everyPage);

	int getTotalRecord();

}