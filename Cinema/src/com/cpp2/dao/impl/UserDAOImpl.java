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
 * 用户的DAO实现类
 * @author Rose
 */
public class UserDAOImpl implements UserDAO
{
	/**
	 * 向tb_user 增加一条记录
	 * @param user
	 */
	@Override
	public void create(User user)
	{
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "insert into tb_user(Username,Phone,Gender,Vip,Password,Email,Birthday) values(?,?,?,?,?,?,?) ";
			Object params[] = {user.getUsername(),user.getPhone(),user.getGender(),user.getVip(),user.getPassword(),user.getEmail(),user.getBirthday()};
			qr.update(sql, params);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据id删除tb_user的一条记录
	 * @param id
	 */
	@Override
	public void delete(int id)
	{
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "delete from tb_user where id=?";
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
			String sql = "UPDATE tb_user SET Username=?,Password=?,Phone=?,Gender=?,Vip=?,Email=?,Birthday=?,Consumption=?,State=? WHERE id=?";
			Object params[] = {user.getUsername(), user.getPassword(), user.getPhone(), user.getGender(), user.getVip(), 
					user.getEmail(), user.getBirthday().toLocaleString(),user.getConsumption(),user.getState(),user.getId()};
			qr.update(sql, params);
		} catch (Exception e)
		{
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据id查找用户
	 * @param id
	 * @return
	 */
	@Override
	public User retrieve(int id)
	{
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select  * from tb_user where id=?";
			return (User)qr.query(sql, id, new BeanHandler(User.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据用户名和密码查找用户
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
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * 获取所有用户
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
	 * 获取总记录数
	 * @return
	 */
	@Override
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
	 * 获取User的分页数据
	 * @param beginIndex
	 * @param everyPage
	 * @return
	 */
	@Override
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
	 * 更新密码
	 * @param newpassword
	 * @param id
	 */
	@Override
	public void updatePassword(String newpassword , int id){
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