<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%
    final String Url = "jdbc:mysql://localhost:3306/SportsRegistration";
    final String Username = "root";
    final String Password = "";
    Connection conn;
    PreparedStatement pst;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(Url, Username, Password);
        if (conn != null) {
           int id = Integer.parseInt(request.getParameter("id"));
            String updateQuery = "UPDATE Data SET ApplicantStatus= 'Approved' WHERE id = ?";
            pst = conn.prepareStatement(updateQuery);
            pst.setInt(1, id);
            int row = pst.executeUpdate();
            if (row > 0)
            {
                out.println("<script>alert('Application approved successfully!'); window.location.href = 'dashboard.jsp';</script>");
            } else
            {
                out.println("<script>alert('Failed to approve the application.'); window.location.href = 'dashboard.jsp';</script>");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>