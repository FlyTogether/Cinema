package com.cpp2.client.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cpp2.domain.Comment;
import com.cpp2.domain.Movie;
import com.cpp2.service.impl.BusinessServiceImpl;

public class Home extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BusinessServiceImpl service = new BusinessServiceImpl();
		List<Movie> onNowMovies = service.getAllOnNowMovie();
		List<Movie> comingSoonMovies = service.getAllComingSoonMovie();
		List<Comment> comments = service.getLatestComment();
		
		request.setAttribute("onNowMovies", onNowMovies);
		request.setAttribute("comingSoonMovie", comingSoonMovies);
		request.setAttribute("comments", comments);
		request.getRequestDispatcher("/home.jsp").forward(request, response);
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
