package com.cpp2.manager.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.cpp2.domain.Movie;
import com.cpp2.service.impl.BusinessServiceImpl;
import com.cpp2.utils.Result;
import com.cpp2.utils.WebUtils;

public class MovieServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if("add".equals(method)){
			add(request,response);
		}
		if("showAll".equals(method)){
			showAll(request,response);
		}
		if("showMovieDetail".equals(method)){
			showMovieDetail(request,response);
		}
		if("showEditableMovieDetail".equals(method)){
			showEditableMovieDetail(request,response);
		}
		if("changeMovieDetail".equals(method)){
			changeMovieDetail(request,response);
		}
	}
	
	



	/**
	 * ���ӰƬ
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Movie movie = doUpload(request);
			BusinessServiceImpl businessService = new BusinessServiceImpl();
			businessService.addMovie(movie);
			request.setAttribute("msg", "ӰƬ��ӳɹ���");
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("msg", "ӰƬ���ʧ�ܣ�");
		}
		request.getRequestDispatcher("/msg.jsp").forward(request, response);
	}
	/**
	 * ���ϴ��ļ����д���
	 * @param request
	 * @return
	 */
	private Movie doUpload(HttpServletRequest request) {
		ConvertUtils.register(new DateLocaleConverter(), Date.class);//ע������װ����
		Movie movie = new Movie();
		String str = "";
		try{
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			List<FileItem> list = upload.parseRequest(request);
			for(FileItem item : list){
				if(item.isFormField()){
					String name = item.getFieldName();
					String value = item.getString("UTF-8");
					if("style".equals(name)){
						str = str+value+",";
						value=str.substring(0,str.lastIndexOf(","));
					}
					if(name.equals("showtimes")){
						System.out.print(value);
					}
					BeanUtils.setProperty(movie, name, value);
				}else{
					String fileName = item.getName();
					String saveName = makeFileName(fileName);
					String savePath = this.getServletContext().getRealPath("/upload");
					InputStream in = item.getInputStream();
					FileOutputStream out = new FileOutputStream(savePath+"\\"+saveName);
					int len = 0;
					byte buffer[] = new byte[1024];
					while((len=in.read(buffer))>0){
						out.write(buffer, 0, len);
					}
					in.close();
					out.close();
					item.delete();
					movie.setImage(saveName);
				}
			}
			return movie;
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * �����ļ�����
	 * @param fileName
	 * @return
	 */
	private String makeFileName(String fileName) {
		String ext = fileName.substring(fileName.lastIndexOf("."));
		return WebUtils.makeName()+ext;
	}
	/**
	 * �鿴����ӰƬ,��ҳ��ʾ
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void showAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try{
			BusinessServiceImpl businessService = new BusinessServiceImpl();
			int currentPage = 0;
			if(request.getParameter("currentPage")==null){
				currentPage = 1;
			}else{
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			int everyPage = 5;
			Result result = businessService.getAllMoviePageData(currentPage, everyPage);
			request.setAttribute("result", result);
			request.getRequestDispatcher("/manager/showAllMovie.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("msg", "��ѯʧ�ܣ������ԣ�");
			request.getRequestDispatcher("/msg.jsp").forward(request, response);
		}
	}
	/**
	 * �鿴ӰƬ����
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void showMovieDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try{
			BusinessServiceImpl businessService = new BusinessServiceImpl();
			int id = Integer.parseInt(request.getParameter("id"));
			Movie movie = businessService.findMovie(id);
			request.setAttribute("movie", movie);
			request.getRequestDispatcher("/manager/showMovieDetail.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("msg", "�鿴ʧ�ܣ������ԣ�");
		}
	}
	/**
	 * �޸�ӰƬ��Ϣ��ʱ�򣬻��Ե�Ӱ��Ϣ
	 * @param request
	 * @param response
	 */
	private void showEditableMovieDetail(HttpServletRequest request,
			HttpServletResponse response) {
		try{
			BusinessServiceImpl businessService = new BusinessServiceImpl();
			int id = Integer.parseInt(request.getParameter("id"));
			Movie movie = businessService.findMovie(id);
			request.setAttribute("movie", movie);
			request.getRequestDispatcher("/manager/showEditableMovieDetail.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/**
	 * �޸�ӰƬ��Ϣ
	 * @param request
	 * @param response
	 */
	private void changeMovieDetail(HttpServletRequest request,
			HttpServletResponse response) {
		try{
			BusinessServiceImpl businessService = new BusinessServiceImpl();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
