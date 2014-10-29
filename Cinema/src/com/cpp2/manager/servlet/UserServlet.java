package com.cpp2.manager.servlet;

import java.io.DataOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.cpp2.domain.User;
import com.cpp2.service.impl.BusinessServiceImpl;

/**
 * �û�����ģ��, �����û��ĵ�¼, ע��,��������
 * @author Rose
 */
public class UserServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		/* �����û���url����, �ж��û��Ĳ��� */
		String method = request.getParameter("method");
		if("login".equals(method))										// ��¼����
		{
			login(request,response);
		}
		else if("register".equals(method))							// ע�����
		{
			register(request, response);
		}
	}

	/**
	 * ע��
	 * @param request
	 * @param response
	 */
	private void register(HttpServletRequest request,
			HttpServletResponse response)
	{
		/* ��ȡ�ƶ��� post�ύ������ */
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		birthday = format.format(new Date(birthday));						// ��ʽ�����ڶ���
		
		/* ҵ���߼�����: ��У��,ͨ���������ݿ���Ӽ�¼ */
		
		
	}

	/**
	 * �û���¼
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		DataOutputStream out = new DataOutputStream(response.getOutputStream());
		try
		{
			/* ��ȡ�ƶ���post������ */
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			
			/* ҵ���߼�����: �û���¼���� */
			BusinessServiceImpl service = new BusinessServiceImpl();
			User user = service.userLogin(username, password);
			
			/* �浽Session */
			request.getSession().setAttribute("user", user);
			
			/* ʧ�ܷ���0��"login failure", �ɹ�����1��"login success" �Լ�json����*/
			if(user == null)
			{
				out.writeUTF("login failure");
				out.writeInt(0);
			}
			else
			{
				/* ��װJson���� �����ַ������*/
				JSONObject jsonObject = JSONObject.fromObject(user);
				
			/*	Iterator<String> i = jsonObject.keys();
				while(i.hasNext())
						System.out.println("the key of json -- "+i.next());*/
				
				Map<String, Object> resultMap = new HashMap<String, Object>();
				resultMap.put("user", jsonObject);
				JSONObject resultObject = JSONObject.fromObject(resultMap);
				
				Map<String, Object> topMap = new HashMap<String, Object>();
				topMap.put("code", "1");
				topMap.put("message", "login success");
				topMap.put("result", resultObject);
				
				JSONObject jsonArray = JSONObject.fromObject(topMap);
				
				out.writeUTF(jsonArray.toString());
				out.flush();
			}
			
		} catch (Exception e)
		{
			e.printStackTrace();
			out.writeUTF(e.getMessage());
			out.flush();
		}
		finally
		{
			out.close();																				// �ر���Դ
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doGet(request,response);
	}

}
