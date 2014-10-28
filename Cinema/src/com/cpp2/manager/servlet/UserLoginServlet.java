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
			/* ��ȡ�ƶ���post������ */
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			
			/* ҵ���߼�����: �û���¼���� */
			BusinessServiceImpl service = new BusinessServiceImpl();
			User user = service.userLogin(username, password);
			
			/* ʧ�ܷ���0��"failure", �ɹ�����1��"success" */
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
