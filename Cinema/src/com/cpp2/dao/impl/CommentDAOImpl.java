package com.cpp2.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cpp2.dao.CommentDAO;
import com.cpp2.domain.Comment;
import com.cpp2.utils.JDBCUtils;
import com.cpp2.vo.V_comment;

public class CommentDAOImpl implements CommentDAO {

	/**
	 * 增加评论
	 * 
	 * @param comment
	 */
	public void addComment(Comment comment) {
		try {
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "insert into tb_comment_movie(content,commitTime,user_id,movie_id) values(?,?,?,?)";
			Object params[] = { comment.getContent(), comment.getCommitTime(),
					comment.getUser_id(), comment.getMovie_id() };
			qr.update(sql, params);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 
	 * @param movie_id
	 * @param beginIndex
	 * @param everyPage
	 * @return
	 */
	public List<Comment> showComment(int movie_id, int beginIndex, int everyPage) {
		try {
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select * from tb_comment_movie where movie_id=? order by commitTime limit ?,? ";
			Object params[] = { movie_id, beginIndex, everyPage };
			return qr.query(sql, params, new BeanListHandler(Comment.class));
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}
	}

	/**
	 * 获得该电影的
	 * 
	 * @return
	 */
	public int getTotalRecord(int movie_id) {
		try {
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select count(*) from tb_comment_movie where movie_id=?";
			long l = qr.query(sql, movie_id, new ScalarHandler());
			return (int) l;
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}
	}

	/**
	 * 获取最新评论
	 * 
	 * @return
	 */
	public List<Comment> getLatestComment() {
		try {
			QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
			String sql = "select content,name as moviename,tb_movie.id as movie_id,username,tb_user.id as user_id from tb_comment_movie,tb_movie,tb_user where tb_movie.id=tb_comment_movie.movie_id and tb_user.id=tb_comment_movie.user_id order by tb_comment_movie.id desc limit 0,5";
			return qr.query(sql, new BeanListHandler(V_comment.class));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
