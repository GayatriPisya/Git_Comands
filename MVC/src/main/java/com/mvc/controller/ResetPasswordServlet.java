package com.mvc.controller;

import java.io.IOException;

import com.mvc.dao.RegisterDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "Passwords do not match!");
            request.getRequestDispatcher("/ResetPassword.jsp").forward(request, response);
            return;
        }

        RegisterDao registerDao = new RegisterDao();
        String result = registerDao.updatePassword(username, newPassword);

        if ("SUCCESS".equals(result)) {
            response.sendRedirect("Login.jsp");
        } else {
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("/ResetPassword.jsp").forward(request, response);
        }
    }
}
