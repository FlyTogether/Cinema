package com.cpp2.dao;

import java.util.List;

import com.cpp2.domain.Movie;

public interface MovieDAO {

	/**
	 * Ìí¼ÓÒ»²¿Ó°Æ¬
	 * @param movie
	 */
	public abstract void create(Movie movie);

	/**
	 * É¾³ýÒ»²¿Ó°Æ¬
	 * @param id
	 */
	public abstract void delete(int id);

	/**
	 * ¸üÐÂÓ°Æ¬ÐÅÏ¢
	 * @param movie
	 */
	public abstract void update(Movie movie);
	/**
	 * ¸ù¾Ý_id¼ìË÷Ó°Æ¬
	 * @param id
	 * @return
	 */
	public Movie retrieve(int id);
	/**
	 * ²éÑ¯Êý¾Ý¿âÖÐµçÓ°µÄ×Ü¼ÇÂ¼Êý
	 * @return
	 */
	public abstract int getAllMovieTotalRecord();

	/**
	 * ²éÑ¯ÕýÔÚÈÈÓ³µÄµçÓ°ÔÚÊý¾Ý¿âÖÐµÄ×Ü¼ÇÂ¼Êý
	 * @return
	 */
	public abstract int getOnNowMovieTotalRecord();

	/**
	 * ²éÑ¯¼´½«ÉÏÓ³µÄµçÓ°ÔÚÊý¾Ý¿âÖÐµÄ×Ü¼ÇÂ¼Êý
	 * @return
	 */
	public abstract int getComingSoonMovieTotalRecord();

	/**
	 * ²éÑ¯³öµçÓ°µÄ·ÖÒ³Êý¾Ý
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public abstract List<Movie> getMoviePageData(int beginIndex, int everyPage);

	/**
	 * ²éÑ¯³öÕýÔÚÈÈÓ³µçÓ°µÄ·ÖÒ³Êý¾Ý
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public abstract List<Movie> getOnNowMoviePageData(int beginIndex,
			int everyPage);

	/**
	 * ²éÑ¯³ö¼´½«ÉÏÓ³µçÓ°µÄ·ÖÒ³Êý¾Ý
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public abstract List<Movie> getComingSoonMoviePageData(int beginIndex,
			int everyPage);

}