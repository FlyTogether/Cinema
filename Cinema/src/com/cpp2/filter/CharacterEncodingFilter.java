package com.cpp2.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

public class CharacterEncodingFilter implements Filter
{
	public void init(FilterConfig filterConfig) throws ServletException {
		 
	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request=(HttpServletRequest) req;
		HttpServletResponse response= (HttpServletResponse) res;
		
		//解决以post方式提交的数据编码问�?
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		//放行
		chain.doFilter(new MyRequest(request), response);
		
	}
	
	public void destroy() {
		// TODO Auto-generated method stub

	}
}

//继承request包装类，增强getParameter方法，用来解决get方法乱码的问�?
class MyRequest extends HttpServletRequestWrapper{
	private HttpServletRequest request;
	public MyRequest(HttpServletRequest request){
		super(request);
		this.request=request;
	}
	@Override
	public String getParameter(String name) {
		String value=this.request.getParameter(name);
		if(value==null){
			return null;
		}
		if(!this.request.getMethod().equalsIgnoreCase("get")){
			 return value;
		}
		try {
			value=new String(value.getBytes("iso8859-1"),this.request.getCharacterEncoding());
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
		return value;
	}
}
