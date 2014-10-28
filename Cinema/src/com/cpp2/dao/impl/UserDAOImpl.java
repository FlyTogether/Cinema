package com.cpp2.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cpp2.dao.UserDAO;
import com.cpp2.domain.User;
import com.cpp2.utils.JDBCUtils;

/**
 * �û���DAOʵ����
 * @author Rose
 */
public class UserDAOImpl implements UserDAO
{
	/**
	 * ��tb_user ����һ����¼
	 * @param user
	 */
	@Override
	public void create(User user)
	{
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "insert into tb_user(User_id,Username,Phone,Gender,VIP,password,email,birthday) values(?,?,?,?,?,?,?,?) ";
			Object params[] = {user.getUser_id(),user.getUsername(),user.getPhone(),user.getGender(),user.getVip(),user.getPassword(),user.getEmail(),user.getBirthday()};
			qr.update(sql, params);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * ����idɾ��tb_user��һ����¼
	 * @param id
	 */
	@Override
	public void delete(int id)
	{
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "";
			qr.update(sql, id);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * modify tb_user
	 * @prama user
	 */
	@Override
	public void update(User user)
	{
		try
		{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "UPDATE TB_User SET Username=?,Password=?,Phone=?,Gender=?,VIP=?,Email=?,Birthday=?";
			Object params[] = {user.getUsername(), user.getPassword(), user.getPhone(), user.getGender(), user.getVip(), user.getEmail(), user.getBirthday().toLocaleString()};
			qr.update(sql, params);
		} catch (Exception e)
		{
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * ����id�����û�
	 * @param id
	 * @return
	 */
	@Override
	public User retrieve(int id)
	{
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select  * from tb_user where User_id=?";
			return (User)qr.query(sql, id, new BeanHandler(User.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * �����û�������������û�
	 * @param username
	 * @param password
	 * @return
	 */
	@Override
	public User retrieve(String username, String password)
	{
		try
		{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select * from tb_user where Username=? and Password=?";
			Object params[] = {username, password};
			return (User)qr.query(sql, params, new BeanHandler(User.class));
		} catch (Exception e)
		{
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * ��ȡ�����û�
	 * @return
	 */
	@Override
	public List<User> getAll()
	{
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select * from tb_user";
			return (List<User>)qr.query(sql, new BeanListHandler(User.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ��ȡ�����û������ݿ��е�������
	 * @return
	 */
	public int getTotalRecord(){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select count(*) from tb_user";
			long l = (Long)qr.query(sql, new ScalarHandler());
			return (int)l;
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ����û���ҳ����
	 * @param beginIndex
	 * @param everyPage
	 * @return
	 */
	public List<User> getAllUserPageDate(int beginIndex,int everyPage){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select * from tb_user limit ?,?";
			Object params[] = {beginIndex,everyPage};
			return (List<User>)qr.query(sql, params, new BeanListHandler(User.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * �û��޸�����
	 * @param newpassword
	 * @param id
	 */
	public void changePassword(String newpassword , int id){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "update TB_User set Password=? where User_id=?";
			Object params[] = {newpassword,id};
			qr.update(sql, params);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
}
