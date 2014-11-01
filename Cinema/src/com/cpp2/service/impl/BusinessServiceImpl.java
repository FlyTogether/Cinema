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
 * ҵ���߼�������
 */
public class BusinessServiceImpl
{
	/* ʹ�ù��������DAO���� */
	private AdminDAO aDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.AdminDAOImpl", AdminDAO.class);
	private UserDAO uDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.UserDAOImpl", UserDAO.class);
	private OrderDAO oDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.OrderDAOImpl", OrderDAO.class);
	private MovieDAO movieDAO =  DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.MovieDAOImpl", MovieDAO.class);
	/**
	 * ��̨��½����,�����ݿ��Ƿ���ڸù���Ա
	 * @param admin
	 * @throws Exception
	 * @author Rose
	 */
	public Admin adminLogin(String username, String password) throws Exception
	{
		return aDAO.find(username, password);
	}

	/**
	 * �û���¼����, �����ݿ��Ƿ���ڸ��û�
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
	 * �����û�����
	 * @author SevenLin
	 * @param newpassword
	 * @param id
	 */
	public void updatePassword(String newpassword,int id){
		uDAO.updatePassword(newpassword, id);
	}
	
	/**
	 * ��ȡ�����û�
	 * @author SevenLin
	 * @return
	 */
	public List<User> getAllUser(){
		return uDAO.getAll();
	}
	
	/**
	 * User��ҳ���
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
	 * ���һ����Ӱ
	 * @param movie
	 */
	public void addMovie(Movie movie){
		movieDAO.create(movie);
	}
	/**
	 * ɾ��һ����Ӱ
	 * @param id
	 */
	public void deleteMovie(int id){
		movieDAO.delete(id);
	}
	/**
	 * �ָ���ɾ��ĵ�Ӱ
	 * @param id
	 */
	public void restoreMovie(int id){
		movieDAO.restore(id);
	}
	/**
	 * ���id����һ����Ӱ
	 * @param id
	 * @return
	 */
	public Movie findMovie(int id){
		return movieDAO.retrieve(id);
	}
	/**
	 * �޸ĵ�Ӱ����
	 * @param movie
	 */
	public void changeMovieDetail(Movie movie){
		movieDAO.update(movie);
	}
	/**
	 * ��ȡ���е�Ӱ�ķ�ҳ���
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
	 * ��ȡ������ӳ�ĵ�Ӱ�ķ�ҳ���
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
	 * ��ȡ������ӳ��Ӱ�ķ�ҳ���
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
	 * �޸�ӰƬ��ͼƬ
	 * @param image
	 * @param id
	 */
	public void changeMovieImage(String image,int id){
		movieDAO.changeImage(image, id);
	}
	/**
	 * ��������
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
		order.setState("unsend");										// δ����״̬
		/* ����������ӵ������� */
		for(Map.Entry<Integer, CartItem> me : cart.getMap().entrySet())
		{
			CartItem citem = me.getValue();
			OrderItem oitem = new OrderItem();
			oitem.setMovie(citem.getMovie());
			oitem.setPrice(citem.getPrice());
			oitem.setQuantity(citem.getQuantity());
			order.getOrderitem().add(oitem);					// ����������ӵ�����
		}
		/* ��������ӵ���ݿ� */
		oDAO.create(order);
	}

	/**
	 * ȷ�϶�������״̬
	 * @param orderId
	 */
	public void confirmOrder(int orderId)
	{
		Order order = oDAO.retrieve(orderId);
		order.setState("send"); 										// ������״̬��Ϊ�ѷ���
		oDAO.update(order);
	}
	
	/**
	 * �г�δ����/�ѷ����Ķ���
	 * @param state
	 * @return
	 */
	public List<Order> listOrder(boolean state)
	{
		return oDAO.getAll(state);
	}
	
	/**
	 * ��ݶ���id��ȡ��������
	 * @param orderId
	 * @return
	 */
	public Order retrieveOrder(int orderId)
	{
		return oDAO.retrieve(orderId);
	}
	
	/**
	 * ���ﳵ���һ����Ӱ
	 * @param cart
	 * @param movie
	 */
	public void buyTicket(Cart cart, Movie movie)
	{
		cart.create(movie);
	}
	
	/**
	 *  ���ȫ�������ķ�ҳ���
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
	 * ����ѷ����ķ�ҳ���
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
	
}
