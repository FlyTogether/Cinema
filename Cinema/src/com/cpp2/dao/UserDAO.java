package com.cpp2.dao;

import java.util.List;

import com.cpp2.domain.User;

public interface UserDAO
{

	/**
	 * ï¿½ï¿½tb_user ï¿½ï¿½ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½Â¼
	 * @param user
	 */
	void create(User user);

	/**
	 * ï¿½ï¿½ï¿½idÉ¾ï¿½ï¿½tb_userï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½Â¼
	 * @param id
	 */
	void delete(int id);

	/**
	 * modify tb_user
	 * @prama user
	 */
	void update(User user);

	/**
	 * ï¿½ï¿½ï¿½idï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½
	 * @param id
	 * @return
	 */
	User retrieve(int id);

	/**
	 * ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½
	 * @param username
	 * @param password
	 * @return
	 */
	//ç”¨æˆ·åè·å–
	User retrieveFromUsername(String username, String password);
	//é‚®ç®±åè·å–
	User retrieveFromEmail(String email, String password);
	//æ‰‹æœºå·è·å–
	User retrieveFromPhone(String phone, String password);

	/**
	 * ï¿½ï¿½È¡ï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½
	 * @return
	 */
	List<User> getAll();

	void updatePassword(String newpassword, int id);

	List<User> getAllUserPageDate(int beginIndex, int everyPage);

	int getTotalRecord();

	// ÓÃ»§Ãû»ñÈ¡
	User retrieveFromUsername(String username, String password);

	// ÓÊÏäÃû»ñÈ¡
	User retrieveFromEmail(String email, String password);

	// ÊÖ»úºÅ»ñÈ¡
	User retrieveFromPhone(String phone, String password);
}