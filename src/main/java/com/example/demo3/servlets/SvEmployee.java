package com.example.demo3.servlets;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import com.example.demo3.models.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "SvEmployee", urlPatterns = "/register-employee")
public class SvEmployee extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Employee> employeeList = new ArrayList<>();
        employeeList.add( new Employee("Monica","mtobon"));
        employeeList.add( new Employee("Pepe","pepe23"));
        employeeList.add( new Employee("Juan","jrodriguez"));
        employeeList.add( new Employee("Andres","atorres2"));

        HttpSession session = request.getSession();
        session.setAttribute("employeeList",employeeList);

        response.sendRedirect("listEmployees.jsp");
    }

    @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String username = req.getParameter("username");
        List<Employee> employeeList = new ArrayList<>();

        System.out.println("name: "+name);
        System.out.println("lastname: "+lastName);
        System.out.println("username: "+username);

        HttpSession session = req.getSession();
        session.setAttribute("employeeList",employeeList);

        resp.sendRedirect("listEmployees.jsp");

    }
}