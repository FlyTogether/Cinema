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
			/* 获取移动端get过来的数据 */
			String movieid = request.getParameter("movieid");
			/* 业务逻辑处理: 查找到该书 */
			BusinessServiceImpl service = new BusinessServiceImpl();
//			Movie movie = service.retrieveMovie(movieid);
			/* 看看Session有没有购物车,没有就new 一个 */
			Cart cart = (Cart) request.getSession().getAttribute("cart");
			if(null == cart)
			{
				cart = new Cart();
				request.getSession().setAttribute("cart", cart);
			}
//			service.buyTicket(cart,movie);
			
			/* 生成订单 */
			User user = (User)request.getSession().getAttribute("user");
			if(null != user)
			{
				service.createOrder(cart, user);
			}
			/* 反馈信息给用户, 0/1 标识购买失败和成功 */
			DataOutputStream out = new DataOutputStream(response.getOutputStream());
			out.writeUTF("购买成功");
			out.writeInt(1);
			
		} catch (Exception e)
		{
			e.printStackTrace();
			DataOutputStream out = new DataOutputStream(response.getOutputStream());
			out.writeUTF("购买失败");
			out.writeInt(0);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
	}

}
