package com.cpp2.dao.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cpp2.dao.MovieDAO;
import com.cpp2.domain.Movie;
import com.cpp2.utils.JDBCUtils;

public class MovieDAOImpl implements MovieDAO{
	/**
	 * ���һ��ӰƬ
	 * @param movie
	 */
	public void create(Movie movie){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "insert into tb_movie(Moviename,Director,Showtimes,Runtime,CastActor,Language,Style,Area,Type,Introduction,Price,Image) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			Object params[] = {movie.getMoviename(),movie.getDirector(),movie.getShowtimes(),movie.getRuntime(),movie.getCastActor(),movie.getLanguage(),movie.getStyle(),movie.getArea(),movie.getType(),movie.getIntroduction(),movie.getPrice(),movie.getImage()};
			qr.update(sql, params);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ɾ��һ��ӰƬ
	 * @param id
	 */
	public void delete(int id){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "update tb_movie set Status='��ɾ��' where _id=?";
			qr.update(sql, id);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ����ӰƬ��Ϣ
	 * @param movie
	 */
	public void update(Movie movie){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "update tb_movie set Moviename=?,Director=?,Showtimes=?,Runtime=?,CastActor=?,Language=?,Style=?,Area=?,Type=?,Introduction=?,Price=?,Image=? where _id=?";
			Object params[] = {movie.getMoviename(),movie.getDirector(),movie.getShowtimes(),movie.getRuntime(),movie.getCastActor(),movie.getLanguage(),movie.getStyle(),movie.getArea(),movie.getType(),movie.getIntroduction(),movie.getPrice(),movie.getImage(),movie.getId()};
			qr.update(sql, params);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ����_id����ӰƬ
	 * @param id
	 * @return
	 */
	public Movie retrieve(int id){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select * from tb_movie where movie_id=?";
			return (Movie)qr.query(sql, id, new BeanHandler(Movie.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ��ѯ���ݿ��е�Ӱ���ܼ�¼��
	 * @return
	 */
	public int getAllMovieTotalRecord(){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select count(*) from tb_movie";
			long l = (Long)qr.query(sql, new ScalarHandler());
			return (int)l;
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ��ѯ������ӳ�ĵ�Ӱ�����ݿ��е��ܼ�¼��
	 * @return
	 */
	public int getOnNowMovieTotalRecord(){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select count(*) from tb_movie where Showtimes<=? and Status='δɾ��'";
			long l = (Long)qr.query(sql, currentTime, new ScalarHandler());
			return (int)l;
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ��ѯ������ӳ�ĵ�Ӱ�����ݿ��е��ܼ�¼��
	 * @return
	 */
	public int getComingSoonMovieTotalRecord(){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select count(*) from tb_movie where Showtimes>? and Status='δɾ��'";
			long l = (Long)qr.query(sql, currentTime, new ScalarHandler());
			return (int)l;
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ��ѯ����Ӱ�ķ�ҳ����
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public List<Movie> getMoviePageData(int beginIndex,int everyPage){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select * from tb_movie order by Showtimes limit ?,?";
			Object params[] = {beginIndex,everyPage};
			return (List<Movie>)qr.query(sql, params, new BeanListHandler(Movie.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ��ѯ��������ӳ��Ӱ�ķ�ҳ����
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public List<Movie> getOnNowMoviePageData(int beginIndex,int everyPage){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select * from tb_movie where Showtimes<=? and Status='δɾ��' order by Showtimes limit ?,?";
			Object params[] = {currentTime,beginIndex,everyPage};
			return (List<Movie>)qr.query(sql, params, new BeanListHandler(Movie.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * ��ѯ��������ӳ��Ӱ�ķ�ҳ����
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public List<Movie> getComingSoonMoviePageData(int beginIndex,int everyPage){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select * from tb_movie where Showtimes>? and Status='δɾ��' order by Showtimes limit ?,?";
			Object params[] = {currentTime,beginIndex,everyPage};
			return (List<Movie>)qr.query(sql, params, new BeanListHandler(Movie.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
}
