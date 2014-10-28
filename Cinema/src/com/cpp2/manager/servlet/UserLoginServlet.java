package com.cpp2.manager.servlet;

import java.io.DataOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cpp2.domain.User;
import com.cpp2.service.impl.BusinessServiceImpl;

public class UserLoginServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		try
		{
			/* 获取移动端post的数据 */
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			
			/* 业务逻辑处理: 用户登录处理 */
			BusinessServiceImpl service = new BusinessServiceImpl();
			User user = service.userLogin(username, password);
			
			/* 失败返回0和"failure", 成功返回1和"success" */
			if(user == null)
			{
				DataOutputStream out = new DataOutputStream(response.getOutputStream());
				out.writeUTF("failure");
				out.writeInt(0);
			}
			else
			{
				DataOutputStream out = new DataOutputStream(response.getOutputStream());
				out.writeUTF("success");
				out.writeInt(1);
			}
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
