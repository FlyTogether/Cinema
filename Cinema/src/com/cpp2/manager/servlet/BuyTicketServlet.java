package com.cpp2.manager.servlet;

import java.io.DataOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cpp2.domain.Cart;
import com.cpp2.domain.User;
import com.cpp2.service.impl.BusinessServiceImpl;

public class BuyTicketServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		try
		{
			/* ��ȡ�ƶ���get���������� */
			String movieid = request.getParameter("movieid");
			/* ҵ���߼�����: ���ҵ����� */
			BusinessServiceImpl service = new BusinessServiceImpl();
//			Movie movie = service.retrieveMovie(movieid);
			/* ����Session��û�й��ﳵ,û�о�new һ�� */
			Cart cart = (Cart) request.getSession().getAttribute("cart");
			if(null == cart)
			{
				cart = new Cart();
				request.getSession().setAttribute("cart", cart);
			}
//			service.buyTicket(cart,movie);
			
			/* ���ɶ��� */
			User user = (User)request.getSession().getAttribute("user");
			if(null != user)
			{
				service.createOrder(cart, user);
			}
			/* ������Ϣ���û�, 0/1 ��ʶ����ʧ�ܺͳɹ� */
			DataOutputStream out = new DataOutputStream(response.getOutputStream());
			out.writeUTF("����ɹ�");
			out.writeInt(1);
			
		} catch (Exception e)
		{
			e.printStackTrace();
			DataOutputStream out = new DataOutputStream(response.getOutputStream());
			out.writeUTF("����ʧ��");
			out.writeInt(0);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
	}

}
