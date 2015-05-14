package com.cpp2.client.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cpp2.domain.Cinema;
import com.cpp2.domain.Comment;
import com.cpp2.domain.Movie;
import com.cpp2.service.impl.BusinessServiceImpl;

public class TheaterServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			BusinessServiceImpl service = new BusinessServiceImpl();
			List<Movie> onNowMovies = service.getAllOnNowMovie();
			List<Movie> comingSoonMovies = service.getAllComingSoonMovie();
			List<Cinema> cinemas = service.getAllCinema();
			List<Comment> comments = service.getLatestComment();
			
			request.setAttribute("onNowMovies", onNowMovies);
			request.setAttribute("comingSoonMovies", comingSoonMovies);
			request.setAttribute("cinemas", cinemas);
			request.setAttribute("comments", comments);
			
			
			
			request.getRequestDispatcher("/jsp/Theater/TheaterHome.jsp").forward(request, response);
		} catch (Exception e) {
			
		}
	}

}
