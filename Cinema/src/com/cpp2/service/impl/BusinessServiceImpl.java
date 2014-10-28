package com.cpp2.service.impl;

import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import com.cpp2.dao.AdminDAO;
import com.cpp2.dao.MovieDAO;
import com.cpp2.dao.UserDAO;
import com.cpp2.domain.Admin;
import com.cpp2.domain.Movie;
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
	/* ʹ�ù���������DAO���� */
	private AdminDAO aDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.AdminDAOImpl", AdminDAO.class);
	private UserDAO uDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.UserDAOImpl", UserDAO.class);
	private MovieDAO movieDAO = DAOFactory.getInstance().createDAO("com.cpp2.dao.impl.MovieDAOImpl", MovieDAO.class);
	/**
	 * ��̨��½����,������ݿ��Ƿ���ڸù���Ա
	 * @param admin
	 * @throws Exception
	 */
	public Admin adminLogin(String username, String password) throws Exception
	{
		return aDAO.find(username, password);
	}

	/**
	 * �û���¼����, ������ݿ��Ƿ���ڸ��û�
	 * @param username
	 * @param password
	 * @return
	 */
	public User userLogin(String username, String password)
	{
		return uDAO.retrieve(username, password);
	}
	/**
	 * �û�ע��
	 * @param user
	 */
	public void userRegister(User user){
		uDAO.create(user);
	}
	/**
	 * �û��޸�����
	 * @param newpassword
	 * @param id
	 */
	public void changePassword(String newpassword,int id){
		uDAO.changePassword(newpassword, id);
	}
	/**
	 * �鿴���е��û���Ϣ
	 * @return
	 */
	public List<User> getAllUser(){
		return uDAO.getAll();
	}
	/**
	 * ��ȡ�����û�������ҳ
	 * @param currentPage
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
	 * ���һ��ӰƬ
	 * @param movie
	 */
	public void addMovie(Movie movie){
		movieDAO.create(movie);
	}
	/**
	 * ����idɾ��һ��ӰƬ
	 * @param id
	 */
	public void deleteMovie(int id){
		movieDAO.delete(id);
	}
	public Movie findMovie(int id){
		return movieDAO.retrieve(id);
	}
	/**
	 * �޸�ӰƬ����Ϣ
	 * @param movie
	 */
	public void changeMovieDetail(Movie movie){
		movieDAO.update(movie);
	}
	/**
	 * ��ѯ���е�Ӱ������ҳ
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
	 * ��ѯ����������ӳ��Ӱ������ҳ
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
	 * ��ѯ���м�����ӳ�ĵ�Ӱ������ҳ
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
}
