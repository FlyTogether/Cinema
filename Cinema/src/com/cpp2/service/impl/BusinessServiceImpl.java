package com.cpp2.service.impl;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.cpp2.dao.AdminDAO;
import com.cpp2.dao.MovieDAO;
import com.cpp2.dao.OrderDAO;
import com.cpp2.dao.ScheduleDAO;
import com.cpp2.dao.UserDAO;
import com.cpp2.domain.Admin;
import com.cpp2.domain.Cart;
import com.cpp2.domain.CartItem;
import com.cpp2.domain.Movie;
import com.cpp2.domain.Order;
import com.cpp2.domain.OrderItem;
import com.cpp2.domain.Schedule;
import com.cpp2.domain.User;
import com.cpp2.factory.DAOFactory;
import com.cpp2.utils.Page;
import com.cpp2.utils.PageUtil;
import com.cpp2.utils.Result;

/**
 * 业务逻辑处理类
 */
public class BusinessServiceImpl
{
	/* 使用工厂类生成DAO对象 */
	private AdminDAO aDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.AdminDAOImpl", AdminDAO.class);
	private UserDAO uDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.UserDAOImpl", UserDAO.class);
	private OrderDAO oDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.OrderDAOImpl", OrderDAO.class);
	private MovieDAO movieDAO =  DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.MovieDAOImpl", MovieDAO.class);
	private ScheduleDAO sDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.ScheduleDAOImpl", ScheduleDAO.class);
	/**
	 * 后台登陆处理,检查数据库是否存在该管理员
	 * @param admin
	 * @throws Exception
	 * @author Rose
	 */
	public Admin adminLogin(String username, String password) throws Exception
	{
		return aDAO.find(username, password);
	}

	/**
	 * 用户登录处理, 检查数据库是否存在该用户
	 * @param username
	 * @param password
	 * @return
	 */
	public User userLogin(String username, String password)
	{
		return uDAO.retrieve(username, password);
	}
	
	/**
	 * 更新用户密码
	 * @author SevenLin
	 * @param newpassword
	 * @param id
	 */
	public void updatePassword(String newpassword,int id){
		uDAO.updatePassword(newpassword, id);
	}
	
	/**
	 * 获取所有用户
	 * @author SevenLin
	 * @return
	 */
	public List<User> getAllUser(){
		return uDAO.getAll();
	}
	
	/**
	 * User分页数据
	 * @param currentPage
	 * @param everyPage
	 * @return
	 */
	public Result getAllUserPageData(int currentPage,int everyPage){
		Result result = new Result();
		int totalCount = uDAO.getTotalRecord();
		Page page = PageUtil.createPage(everyPage, totalCount, currentPage);
		List<User> list = uDAO.getAllUserPageDate(page.getBeginIndex(), everyPage);
		result.setPage(page);
		result.setList(list);
		return result;
	}
	
	
	
	/**
	 * 添加一部电影
	 * @param movie
	 */
	public void addMovie(Movie movie){
		movieDAO.create(movie);
	}
	/**
	 * 删除一部电影
	 * @param id
	 */
	public void deleteMovie(int id){
		movieDAO.delete(id);
	}
	/**
	 * 恢复已删除的电影
	 * @param id
	 */
	public void restoreMovie(int id){
		movieDAO.restore(id);
	}
	/**
	 * 根据id查找一部电影
	 * @param id
	 * @return
	 */
	public Movie findMovie(int id){
		return movieDAO.retrieve(id);
	}
	/**
	 * 修改电影详情
	 * @param movie
	 */
	public void changeMovieDetail(Movie movie){
		movieDAO.update(movie);
	}
	/**
	 * 获取所有电影的分页数据
	 * @param currentPage
	 * @param everyPage
	 * @return
	 */
	public Result getAllMoviePageData(int currentPage,int everyPage){
		Result result = new Result();
		int totalCount = movieDAO.getAllMovieTotalRecord();
		Page page = PageUtil.createPage(everyPage, totalCount, currentPage);
		List<Movie> list = movieDAO.getMoviePageData(page.getBeginIndex(), everyPage);
		result.setList(list);
		result.setPage(page);
		return result;
	}
	
	/**
	 * 获取正在热映的电影的分页数据
	 * @param currentPage
	 * @param everyPage
	 * @return
	 */
	public Result getOnNowMoviePageData(int currentPage,int everyPage){
		Result result = new Result();
		int totalCount = movieDAO.getOnNowMovieTotalRecord();
		Page page = PageUtil.createPage(everyPage, totalCount, currentPage);
		List<Movie> list = movieDAO.getOnNowMoviePageData(page.getBeginIndex(), everyPage);
		result.setList(list);
		result.setPage(page);
		return result;
	}
	/**
	 * 获取即将上映电影的分页数据
	 * @param currentPage
	 * @param everyPage
	 * @return
	 */
	public Result getComingSoonMoviePageData(int currentPage,int everyPage){
		Result result = new Result();
		int totalCount = movieDAO.getComingSoonMovieTotalRecord();
		Page page = PageUtil.createPage(everyPage, totalCount, currentPage);
		List<Movie> list = movieDAO.getComingSoonMoviePageData(page.getBeginIndex(), everyPage);
		result.setList(list);
		result.setPage(page);
		return result;
	}
	/**
	 * 修改影片的图片
	 * @param image
	 * @param id
	 */
	public void changeMovieImage(String image,int id){
		movieDAO.changeImage(image, id);
	}
	/**
	 * 获取所有正在热映的电影
	 * @return
	 */
	public List<Movie> getAllOnNowMovie(){
		return movieDAO.getAllOnNowMovie();
	}
	/**
	 * 获取所有即将上映的电影
	 * @return
	 */
	public List<Movie> getAllComingSoonMovie(){
		return movieDAO.getAllComingSoonMovie();
	}
	/**
	 * 新增订单
	 * @param cart
	 * @param user
	 */
	public void createOrder(Cart cart, User user)
	{
		if(cart == null)
		{
			throw  new  RuntimeException("sorry, you didn't buy  anything..");
		}
		Order order = new Order();
		order.setOrdertime(new Date());
		order.setPrice(cart.getPrice());
		order.setUser(user);
		order.setState("unsend");										// 未发货状态
		/* 将购物项添加到订单项 */
		for(Map.Entry<Integer, CartItem> me : cart.getMap().entrySet())
		{
			CartItem citem = me.getValue();
			OrderItem oitem = new OrderItem();
			oitem.setMovie(citem.getMovie());
			oitem.setPrice(citem.getPrice());
			oitem.setQuantity(citem.getQuantity());
			order.getOrderitem().add(oitem);					// 将订单项添加到订单
		}
		/* 将订单添加到数据库 */
		oDAO.create(order);
	}

	/**
	 * 确认订单发货状态
	 * @param orderId
	 */
	public void confirmOrder(int orderId)
	{
		Order order = oDAO.retrieve(orderId);
		order.setState("send"); 										// 将订单状态置为已发货
		oDAO.update(order);
	}
	
	/**
	 * 列出未发货/已发货的订单
	 * @param state
	 * @return
	 */
	public List<Order> listOrder(boolean state)
	{
		return oDAO.getAll(state);
	}
	
	/**
	 * 根据订单id获取订单对象
	 * @param orderId
	 * @return
	 */
	public Order retrieveOrder(int orderId)
	{
		return oDAO.retrieve(orderId);
	}
	
	/**
	 * 往购物车添加一部电影
	 * @param cart
	 * @param movie
	 */
	public void buyTicket(Cart cart, Movie movie)
	{
		cart.create(movie);
	}
	
	/**
	 *  获得全部订单的分页数据
	 *  @author Rose
	 * @param currentPage
	 * @param everyPage
	 * @param state
	 * @return
	 */
	public Result getAllOrderPageData(int currentPage,int everyPage,String state){
		Result result = new Result();
		int totalCount = oDAO.getTotalRecord();
		Page page = PageUtil.createPage(everyPage, totalCount, currentPage);
		List<Order> list = oDAO.getAllOrderPageDate(page.getBeginIndex(), everyPage,state);
		result.setPage(page);
		result.setList(list);
		return result;
	}
	
	/**
	 * 获得已发货的分页数据
	 * @author Rose
	 * @param pageSize
	 * @param currentPage
	 * @return
	 */
	public Result getSendOrderPage(int pageSize, int currentPage)
	{
		int sendCount = oDAO.getTotalRecord() - oDAO.getUnsendRecord();
		Result result = new Result();
		Page page = PageUtil.createPage(pageSize, sendCount, currentPage);
		List<Order> list = oDAO.getAllOrderPageDate(page.getBeginIndex(), pageSize, "send");
		result.setPage(page);
		result.setList(list);
		return result;
	}
	/**
	 * 新建排期
	 * @param schedule
	 */
	public void createSchedule(Schedule schedule){
		sDAO.createSchedule(schedule);
	}
	/**
	 * 删除排期
	 * @param id
	 */
	public void deleteSchedule(int id){
		sDAO.deleteSchedule(id);
	}
	/**
	 * 更新排期
	 * @param schedule
	 */
	public void updateSchedule(Schedule schedule){
		sDAO.updateSchedule(schedule);
	}
	/**
	 * 获取排期的分页数据
	 * @param everyPage
	 * @param currentPage
	 * @return
	 */
	public Result getAllSchedulePageData(int everyPage,int currentPage){
		Result result = new Result();
		int totalRecord = sDAO.getScheduleTotalRecord();
		Page page = PageUtil.createPage(everyPage, totalRecord, currentPage);
		List<Schedule> list = sDAO.getAllSchedulePageDate(page.getBeginIndex(), everyPage);
		result.setList(list);
		result.setPage(page);
		return result;
	}
	/**
	 * 根据电影id查找该影片的所有排期
	 * @param id
	 * @return
	 */
	public List<Schedule> getScheduleByMovieId(int id){
		return sDAO.getScheduleByMovieId(id);
	}
	/**
	 * 根据影片的id和影院的id来查找排期
	 * @param movie_id
	 * @param cinema_id
	 * @return
	 */
	public List<Schedule> getScheduleByMovieIdAndCinemaId(int movie_id,int cinema_id){
		return sDAO.getScheduleByMovieIdAndCinemaId(movie_id, cinema_id);
	}
	/**
	 * 更新剩余票数
	 * @param id
	 * @param remanent
	 */
	public void updateRemanent(int id ,int remanent){
		sDAO.updateRemanent(id, remanent);
	}
}
