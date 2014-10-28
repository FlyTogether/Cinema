package com.cpp2.dao;

import java.util.List;

import com.cpp2.domain.Movie;

public interface MovieDAO {

	/**
	 * 添加一部影片
	 * @param movie
	 */
	public abstract void create(Movie movie);

	/**
	 * 删除一部影片
	 * @param id
	 */
	public abstract void delete(int id);

	/**
	 * 更新影片信息
	 * @param movie
	 */
	public abstract void update(Movie movie);
	/**
	 * 根据_id检索影片
	 * @param id
	 * @return
	 */
	public Movie retrieve(int id);
	/**
	 * 查询数据库中电影的总记录数
	 * @return
	 */
	public abstract int getAllMovieTotalRecord();

	/**
	 * 查询正在热映的电影在数据库中的总记录数
	 * @return
	 */
	public abstract int getOnNowMovieTotalRecord();

	/**
	 * 查询即将上映的电影在数据库中的总记录数
	 * @return
	 */
	public abstract int getComingSoonMovieTotalRecord();

	/**
	 * 查询出电影的分页数据
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public abstract List<Movie> getMoviePageData(int beginIndex, int everyPage);

	/**
	 * 查询出正在热映电影的分页数据
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public abstract List<Movie> getOnNowMoviePageData(int beginIndex,
			int everyPage);

	/**
	 * 查询出即将上映电影的分页数据
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public abstract List<Movie> getComingSoonMoviePageData(int beginIndex,
			int everyPage);

}