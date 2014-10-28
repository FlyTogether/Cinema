package com.cpp2.dao;

import java.util.List;

import com.cpp2.domain.User;

public interface UserDAO {

	/**
	 * ��tb_user ����һ����¼
	 * @param user
	 */
	public abstract void create(User user);

	/**
	 * ����idɾ��tb_user��һ����¼
	 * @param id
	 */
	public abstract void delete(int id);

	/**
	 * modify tb_user
	 * @prama user
	 */
	public abstract void update(User user);

	/**
	 * ����id�����û�
	 * @param id
	 * @return
	 */
	public abstract User retrieve(int id);

	/**
	 * �����û�������������û�
	 * @param username
	 * @param password
	 * @return
	 */
	public abstract User retrieve(String username, String password);

	/**
	 * ��ȡ�����û�
	 * @return
	 */
	public abstract List<User> getAll();
	
	/**
	 * ��ȡ�����û������ݿ��е�������
	 * @return
	 */
	public int getTotalRecord();

	/**
	 * ����û���ҳ����
	 * @param beginIndex
	 * @param everyPage
	 * @return
	 */
	public List<User> getAllUserPageDate(int beginIndex,int everyPage);
	
	/**
	 * �û��޸�����
	 * @param newpassword
	 * @param id
	 */
	public abstract void changePassword(String newpassword, int id);

}