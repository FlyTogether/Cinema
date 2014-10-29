package com.cpp2.manager.servlet;

import java.io.DataOutputStream;
import java.io.IOException;
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

public class UserLoginServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		DataOutputStream out = new DataOutputStream(response.getOutputStream());
		try
		{
			/* 获取移动端post的数据 */
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			
			/* 业务逻辑处理: 用户登录处理 */
			BusinessServiceImpl service = new BusinessServiceImpl();
			User user = service.userLogin(username, password);
			
			/* 存到Session */
			request.getSession().setAttribute("user", user);
			
			/* 失败返回0和"login failure", 成功返回1和"login success" 以及json数据*/
			if(user == null)
			{
				out.writeUTF("login failure");
				out.writeInt(0);
			}
			else
			{
				/* 封装Json对象 并用字符流输出*/
				JSONObject jsonObject = JSONObject.fromObject(user);
				
				Iterator<String> i = jsonObject.keys();
				while(i.hasNext())
						System.out.println("the key of json -- "+i.next());
				
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
			out.close();																				// 关闭资源
		}
		
	}

}
