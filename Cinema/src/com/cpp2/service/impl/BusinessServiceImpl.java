package com.cpp2.service.impl;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.cpp2.dao.AdminDAO;
import com.cpp2.dao.MovieDAO;
import com.cpp2.dao.OrderDAO;
import com.cpp2.dao.UserDAO;
import com.cpp2.domain.Admin;
import com.cpp2.domain.Cart;
import com.cpp2.domain.CartItem;
import com.cpp2.domain.Movie;
import com.cpp2.domain.Order;
import com.cpp2.domain.OrderItem;
import com.cpp2.domain.User;
import com.cpp2.factory.DAOFactory;
import com.cpp2.utils.Page;
import com.cpp2.utils.PageUtil;
import com.cpp2.utils.Result;

/**
 * Òµï¿½ï¿½ï¿½ß¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
 */
public class BusinessServiceImpl
{
	/* Ê¹ï¿½Ã¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½DAOï¿½ï¿½ï¿½ï¿½ */
	private AdminDAO aDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.AdminDAOImpl", AdminDAO.class);
	private UserDAO uDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.UserDAOImpl", UserDAO.class);
	private OrderDAO oDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.OrderDAOImpl", OrderDAO.class);
	private MovieDAO movieDAO =  DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.MovieDAOImpl", MovieDAO.class);
	/**
	 * ï¿½ï¿½Ì¨ï¿½ï¿½Â½ï¿½ï¿½ï¿½ï¿½,ï¿½ï¿½ï¿½ï¿½ï¿½Ý¿ï¿½ï¿½Ç·ï¿½ï¿½ï¿½Ú¸Ã¹ï¿½ï¿½ï¿½Ô±
	 * @param admin
	 * @throws Exception
	 * @author Rose
	 */
	public Admin adminLogin(String username, String password) throws Exception
	{
		return aDAO.find(username, password);
	}

	/**
	 * ï¿½Ã»ï¿½ï¿½ï¿½Â¼ï¿½ï¿½ï¿½ï¿½, ï¿½ï¿½ï¿½ï¿½ï¿½Ý¿ï¿½ï¿½Ç·ï¿½ï¿½ï¿½Ú¸ï¿½ï¿½Ã»ï¿½
	 * @param username
	 * @param password
	 * @return
	 */
	public User userUsernameLogin(String username, String password)
	{
		return uDAO.retrieveFromUsername(username, password);
	}
	public User userEmailLogin(String email, String password)
	{
		return uDAO.retrieveFromEmail(email, password);
	}
	public User userPhoneLogin(String phone, String password)
	{
		return uDAO.retrieveFromPhone(phone, password);
	}
	
	/**
	 * ï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½
	 * @author SevenLin
	 * @param newpassword
	 * @param id
	 */
	public void updatePassword(String newpassword,int id){
		uDAO.updatePassword(newpassword, id);
	}
	
	/**
	 * ï¿½ï¿½È¡ï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½
	 * @author SevenLin
	 * @return
	 */
	public List<User> getAllUser(){
		return uDAO.getAll();
	}
	
	/**
	 * Userï¿½ï¿½Ò³ï¿½ï¿½ï¿½
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
	 * ï¿½ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½Ó°
	 * @param movie
	 */
	public void addMovie(Movie movie){
		movieDAO.create(movie);
	}
	/**
	 * É¾ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½Ó°
	 * @param id
	 */
	public void deleteMovie(int id){
		movieDAO.delete(id);
	}
	/**
	 * ï¿½Ö¸ï¿½ï¿½ï¿½É¾ï¿½ï¿½Äµï¿½Ó°
	 * @param id
	 */
	public void restoreMovie(int id){
		movieDAO.restore(id);
	}
	/**
	 * ï¿½ï¿½ï¿½idï¿½ï¿½ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½Ó°
	 * @param id
	 * @return
	 */
	public Movie findMovie(int id){
		return movieDAO.retrieve(id);
	}
	/**
	 * ï¿½Þ¸Äµï¿½Ó°ï¿½ï¿½ï¿½ï¿½
	 * @param movie
	 */
	public void changeMovieDetail(Movie movie){
		movieDAO.update(movie);
	}
	/**
	 * ï¿½ï¿½È¡ï¿½ï¿½ï¿½Ðµï¿½Ó°ï¿½Ä·ï¿½Ò³ï¿½ï¿½ï¿½
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
	 * ï¿½ï¿½È¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó³ï¿½Äµï¿½Ó°ï¿½Ä·ï¿½Ò³ï¿½ï¿½ï¿½
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
	 * ï¿½ï¿½È¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó³ï¿½ï¿½Ó°ï¿½Ä·ï¿½Ò³ï¿½ï¿½ï¿½
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
	 * ï¿½Þ¸ï¿½Ó°Æ¬ï¿½ï¿½Í¼Æ¬
	 * @param image
	 * @param id
	 */
	public void changeMovieImage(String image,int id){
		movieDAO.changeImage(image, id);
	}
	/**
	 * ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
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
		order.setState("unsend");										// Î´ï¿½ï¿½ï¿½ï¿½×´Ì¬
		/* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Óµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ */
		for(Map.Entry<Integer, CartItem> me : cart.getMap().entrySet())
		{
			CartItem citem = me.getValue();
			OrderItem oitem = new OrderItem();
			oitem.setMovie(citem.getMovie());
			oitem.setPrice(citem.getPrice());
			oitem.setQuantity(citem.getQuantity());
			order.getOrderitem().add(oitem);					// ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Óµï¿½ï¿½ï¿½ï¿½ï¿½
		}
		/* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Óµï¿½ï¿½ï¿½Ý¿ï¿½ */
		oDAO.create(order);
	}

	/**
	 * È·ï¿½Ï¶ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½×´Ì¬
	 * @param orderId
	 */
	public void confirmOrder(int orderId)
	{
		Order order = oDAO.retrieve(orderId);
		order.setState("send"); 										// ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½×´Ì¬ï¿½ï¿½Îªï¿½Ñ·ï¿½ï¿½ï¿½
		oDAO.update(order);
	}
	
	/**
	 * ï¿½Ð³ï¿½Î´ï¿½ï¿½ï¿½ï¿½/ï¿½Ñ·ï¿½ï¿½ï¿½ï¿½Ä¶ï¿½ï¿½ï¿½
	 * @param state
	 * @return
	 */
	public List<Order> listOrder(boolean state)
	{
		return oDAO.getAll(state);
	}
	
	/**
	 * ï¿½ï¿½Ý¶ï¿½ï¿½ï¿½idï¿½ï¿½È¡ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
	 * @param orderId
	 * @return
	 */
	public Order retrieveOrder(int orderId)
	{
		return oDAO.retrieve(orderId);
	}
	
	/**
	 * ï¿½ï¿½ï¿½ï³µï¿½ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½Ó°
	 * @param cart
	 * @param movie
	 */
	public void buyTicket(Cart cart, Movie movie)
	{
		cart.create(movie);
	}
	
	/**
	 *  ï¿½ï¿½ï¿½È«ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä·ï¿½Ò³ï¿½ï¿½ï¿½
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
	 * ï¿½ï¿½ï¿½ï¿½Ñ·ï¿½ï¿½ï¿½ï¿½Ä·ï¿½Ò³ï¿½ï¿½ï¿½
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
<<<<<<< HEAD
	/**
	 * ÐÂ½¨ÅÅÆÚ
	 * @param schedule
	 */
	public void createSchedule(Schedule schedule){
		sDAO.createSchedule(schedule);
	}
	/**
	 * É¾³ýÅÅÆÚ
	 * @param id
	 */
	public void deleteSchedule(int id){
		sDAO.deleteSchedule(id);
	}
	/**
	 * ¸üÐÂÅÅÆÚ
	 * @param schedule
	 */
	public void updateSchedule(Schedule schedule){
		sDAO.updateSchedule(schedule);
	}
	/**
	 * »ñÈ¡ÅÅÆÚµÄ·ÖÒ³Êý¾Ý
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
	 * ¸ù¾ÝµçÓ°id²éÕÒ¸ÃÓ°Æ¬µÄËùÓÐÅÅÆÚ
	 * @param id
	 * @return
	 */
	public List<Schedule> getScheduleByMovieId(int id){
		return sDAO.getScheduleByMovieId(id);
	}
	/**
	 * ¸ù¾ÝÓ°Æ¬µÄidºÍÓ°ÔºµÄidÀ´²éÕÒÅÅÆÚ
	 * @param movie_id
	 * @param cinema_id
	 * @return
	 */
	public List<Schedule> getScheduleByMovieIdAndCinemaId(int movie_id,int cinema_id){
		return sDAO.getScheduleByMovieIdAndCinemaId(movie_id, cinema_id);
	}
	/**
	 * ¸üÐÂÊ£ÓàÆ±Êý
	 * @param id
	 * @param remanent
	 */
	public void updateRemanent(int id ,int remanent){
		sDAO.updateRemanent(id, remanent);
	}

	/**
	 * ×¢²áÓÃ»§
	 * @param user
	 */
	public void register(User user)
	{
		/* ÏÈÉ¨ÃèÊý¾Ý¿â, ¼ì²éÊÇ·ñÒÑ¾­´æÔÚ¸ÃÓÃ»§ */
		uDAO.create(user);
	}

	/**
	 * ¸ù¾ÝÓÃ»§µÄÊÖ»úºÅÂë,ÐÞ¸ÄÃÜÂë
	 * @param username
	 * @param phone
	 * @param password
	 */
	public boolean forgotten(String username, String phone, String password)
	{
		/* ÏÈÍ¨¹ýusernameÕÒµ½ÓÃ»§ */
		User user = uDAO.retrieve(username);
		/* ºË¶ÔÐÅÏ¢ */
		if(!user.getPhone().equals(phone))
		{
			return false;
		}
		/* ÐÞ¸ÄÃÜÂë(update) */
		uDAO.updatePassword(password, user.getId());
		return true;
	}

	/**
	 * ¸ù¾ÝµçÓ°IDÕÒµ½µçÓ°
	 * @param movieid
	 * @return
	 */
	public Movie retrieveMovie(String movieid)
	{
		return movieDAO.retrieve(Integer.parseInt(movieid));
	}

	/**
	 * ¸ù¾Ý¶©µ¥id,É¾³ý¶©µ¥
	 * @param orderID
	 */
	public void deleteOrder(String orderID)
	{
		/* ÏÈÕÒµ½¶©µ¥ÔÙÉ¾³ý */
		Order order = oDAO.retrieve(Integer.parseInt(orderID));
		oDAO.delete(order);
	}
=======
>>>>>>> origin/master
	
}
