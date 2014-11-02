package com.cpp2.manager.servlet;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.cpp2.domain.User;
import com.cpp2.service.impl.BusinessServiceImpl;

/**
 * �û�����ģ��, �����û��ĵ�¼, ע��,�������
 * 
 * @author Rose
 */
public class UserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if(method.equals("login")){
		login(request, response);
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		String style = request.getParameter("style");
		String loginNum = request.getParameter("loginNum");
		String password = request.getParameter("password");
		JSONObject object = new JSONObject();
		PrintWriter out = response.getWriter();
		User user = null;
		BusinessServiceImpl service = new BusinessServiceImpl();
		if (style.matches("(^\\w+$)")) {
			user = service.userUsernameLogin(loginNum, password);
			
		} else if (style.matches("\\w+@\\w+(\\.\\w+)+")) {
			user = service.userEmailLogin(loginNum, password);
		} else if (style.matches("\\d{11}")) {
			user = service.userPhoneLogin(loginNum, password);
		}
		System.out.println(user.getPassword() + user.getPassword());
		if (user == null) {
			out.write(0);
		} else {
			object.put("username", user.getUsername());
			object.put("password", user.getPassword());
			object.put("phone", user.getPhone());
			object.put("gender", user.getGender());
			object.put("email", user.getEmail());
			object.put("birthday", user.getBirthday().toLocaleString());
			out.write("1");
			out.write(object.toString());
			request.getSession().setAttribute("user", user);//用户存在才放入session
		}
	

		out.flush();
		out.close();
	}

	/**
	 * ע��
	 * 
	 * @param request
	 * @param response
	 */
	private void register(HttpServletRequest request,
			HttpServletResponse response) {
		/* ��ȡ�ƶ��� post�ύ����� */
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		birthday = format.format(new Date(birthday)); // ��ʽ�����ڶ���

		/* ҵ���߼�����: ��У��,ͨ��������ݿ���Ӽ�¼ */

	}

	/**
	 * �û���¼
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
//	private void login(HttpServletRequest request, HttpServletResponse response)
//			throws IOException {
//		response.setCharacterEncoding("utf-8");
//		PrintWriter out = response.getWriter();
//		try {
//			/* ��ȡ�ƶ���post����� */
//			String username = request.getParameter("username");
//			String password = request.getParameter("password");
//
//			/* ҵ���߼�����: �û���¼���� */
//			BusinessServiceImpl service = new BusinessServiceImpl();
//			User user = service.userLogin(username, password);
//
//			/* �浽Session */
//
//			/* ʧ�ܷ���0��"login failure", �ɹ�����1��"login success" �Լ�json��� */
//			if (user == null) {
//				out.write("login failure");
//				out.write(0);
//			} else {
//				/* ��װJson���� �����ַ������ */
//				System.out.println("find user");
//				JSONObject jsonObject = JSONObject.fromObject(user);
//
//				/*
//				 * Iterator<String> i = jsonObject.keys(); while(i.hasNext())
//				 * System.out.println("the key of json -- "+i.next());
//				 */
//
//				Map<String, Object> resultMap = new HashMap<String, Object>();
//				resultMap.put("user", jsonObject);
//				JSONObject resultObject = JSONObject.fromObject(resultMap);
//
//				Map<String, Object> topMap = new HashMap<String, Object>();
//				topMap.put("code", "1");
//				topMap.put("message", "login success");
//				topMap.put("result", resultObject);
//
//				JSONObject jsonArray = JSONObject.fromObject(topMap);
//
//				out.write(jsonArray.toString());
//				out.flush();
//				System.out.println("json");
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//			out.write(e.getMessage());
//			out.flush();
//		} finally {
//			out.close(); // �ر���Դ
//		}
//	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
