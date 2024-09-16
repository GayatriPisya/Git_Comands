package com.mvc.controller;

import java.io.IOException;
import com.mvc.dao.LoginDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
    public LoginServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("uid");
        String password = request.getParameter("pwd");

        LoginDao loginDao = new LoginDao();
        boolean userValid = loginDao.validateUser(userid, password);

        if (userValid) {
            request.getRequestDispatcher("/Home.jsp").forward(request, response);
        } else {
            request.setAttribute("ERROR", "Invalid username or password");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
    }
}
