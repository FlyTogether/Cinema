package com.cpp2.manager.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cpp2.domain.Order;
import com.cpp2.service.impl.BusinessServiceImpl;
import com.cpp2.utils.Page;
import com.cpp2.utils.Result;

public class OrderServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		/* ����url�Ĳ������� */
		String method = request.getParameter("method");
		if("showUnsend".equals(method))				// ��ʾδ�����Ķ���
		{
			showUnsend(request, response);
		}
		else if("showSend".equals(method))
		{
			showSend(request, response);
		}
		else if("detail".equals(method))					// ��������
		{
			listOrderDetail(request, response);
		}
		else if("confirm".equals(method))				// ȷ���ջ�
		{
			confirm(request, response);
		}
	}

	private void confirm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String orderid = request.getParameter("orderid");
			BusinessServiceImpl service = new BusinessServiceImpl();
			service.confirmOrder(Integer.parseInt(orderid));							// ���Ķ���״̬Ϊ�ѷ���
			request.setAttribute("msg", "״̬��Ϊ����,�뼰ʱ����");
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("msg", "ȷ��ʧ��.");
		}
		request.getRequestDispatcher("/msg.jsp").forward(request, response);
	}

	private void listOrderDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			/* ��ȡurl�Ĳ��� */
			String orderID = request.getParameter("orderid");
			/* ҵ���߼�����: ����id��ѯ������ */
			BusinessServiceImpl service = new BusinessServiceImpl();
			Order order = (Order)service.retrieveOrder(Integer.parseInt(orderID));
			
			request.setAttribute("order", order);
			request.getRequestDispatcher("/manager/listOrderDetail.jsp").forward(request, response);
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("msg", "sorry , ��������æ,�޷���ѯ");
			request.getRequestDispatcher("/msg.jsp").forward(request, response);
		}
		
		
	}

	private void showSend(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			BusinessServiceImpl service = new BusinessServiceImpl();
			int currentPage = 0;
			int pageSize = 5;					// ÿ��ҳ����ʾ��������
			/* �жϲ����Ƿ�Ϊ��, �������õ�ǰҳ��Ϊ��һҳ*/
			if(null == request.getParameter("currentPage"))
			{
				currentPage = 1;
			}
			else
			{
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			/* ҵ���߼�: ��ȡ�����ķ�ҳ����,�����浽Result */
			Result result = service.getSendOrderPage(pageSize, currentPage);
			request.setAttribute("state", "�ѷ���");
			request.setAttribute("result", result);
			request.getRequestDispatcher("/manager/listOrder.jsp").forward(request, response);		// ����ת��
			
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("msg", "��Ǹ, ��������æ (= =)");
			request.getRequestDispatcher("/msg.jsp").forward(request, response);		// ����ת��
		}
	}

	private void showUnsend(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			BusinessServiceImpl service = new BusinessServiceImpl();
			int currentPage = 0;
			int pageSize = 5;					// ÿ��ҳ����ʾ��������
			/* �жϲ����Ƿ�Ϊ��, �������õ�ǰҳ��Ϊ��һҳ*/
			if(null == request.getParameter("currentPage"))
			{
				currentPage = 1;
			}
			else
			{
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			/* ҵ���߼�: ��ȡ�����ķ�ҳ����,�����浽Result */
			Result result = service.getAllOrderPageData(currentPage, pageSize, "unsend");
			request.setAttribute("state", "δ����");
			request.setAttribute("result", result);
			request.getRequestDispatcher("/manager/listOrder.jsp").forward(request, response);		// ����ת��
			
		} catch (Exception e)
		{
			e.printStackTrace();
			request.setAttribute("msg", "��Ǹ, ��������æ (= =)");
			request.getRequestDispatcher("/msg.jsp").forward(request, response);		// ����ת��
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
	}

}
