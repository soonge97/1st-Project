<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action</title>
</head>
<body>
    <%
        String userID = request.getParameter("userID");
        String password = request.getParameter("userPassword");

        String dbURL = "jdbc:mariadb://10.100.120.5:3306/store"; // 데이터베이스 URL 수정 필요
        String dbUser = "root"; // 데이터베이스 사용자명 수정 필요
        String dbPassword = "password"; // 데이터베이스 비밀번호 수정 필요

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "SELECT * FROM user WHERE userID=? AND userPassword=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userID);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                out.println("Login Successful");
		response.sendRedirect("index.jsp");
            } else {
		out.println("<a href='index.jsp'>로그인 실패 이새끼야</a>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
	if(userID != null && userID.equals(password)){
	   session.setAttribute("userID", userID);
	}
    %>
</body>
</html>
