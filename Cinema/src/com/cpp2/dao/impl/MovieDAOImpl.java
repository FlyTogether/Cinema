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
	 * 添加一部影片
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
	 * 删除一部影片
	 * @param id
	 */
	public void delete(int id){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "update tb_movie set Status='已删除' where _id=?";
			qr.update(sql, id);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * 更新影片信息
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
	 * 根据_id检索影片
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
	 * 查询数据库中电影的总记录数
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
	 * 查询正在热映的电影在数据库中的总记录数
	 * @return
	 */
	public int getOnNowMovieTotalRecord(){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select count(*) from tb_movie where Showtimes<=? and Status='未删除'";
			long l = (Long)qr.query(sql, currentTime, new ScalarHandler());
			return (int)l;
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * 查询即将上映的电影在数据库中的总记录数
	 * @return
	 */
	public int getComingSoonMovieTotalRecord(){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select count(*) from tb_movie where Showtimes>? and Status='未删除'";
			long l = (Long)qr.query(sql, currentTime, new ScalarHandler());
			return (int)l;
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * 查询出电影的分页数据
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
	 * 查询出正在热映电影的分页数据
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public List<Movie> getOnNowMoviePageData(int beginIndex,int everyPage){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select * from tb_movie where Showtimes<=? and Status='未删除' order by Showtimes limit ?,?";
			Object params[] = {currentTime,beginIndex,everyPage};
			return (List<Movie>)qr.query(sql, params, new BeanListHandler(Movie.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * 查询出即将上映电影的分页数据
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public List<Movie> getComingSoonMoviePageData(int beginIndex,int everyPage){
		try{
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			Date currentTime = new Date();
			String sql = "select * from tb_movie where Showtimes>? and Status='未删除' order by Showtimes limit ?,?";
			Object params[] = {currentTime,beginIndex,everyPage};
			return (List<Movie>)qr.query(sql, params, new BeanListHandler(Movie.class));
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
}
