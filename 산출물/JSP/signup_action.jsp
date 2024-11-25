<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Join Action</title>
</head>
<body>
    <%
        String userID = request.getParameter("userID");
        String userPassword = request.getParameter("userPassword");
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
	System.out.println();
        String dbURL = "jdbc:mariadb://10.100.120.5:3306/store"; // 데이터베이스 URL 수정 필요
	System.out.println();
        String dbUser = "root"; // 데이터베이스 사용자명 수정 필요
        String dbPassword = "password"; // 데이터베이스 비밀번호 수정 필요
	System.out.println();
        Connection conn = null;
        PreparedStatement pstmt = null;
	System.out.println();
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
	System.out.println();
            String sql = "INSERT INTO user (userID, userPassword, userName, userEmail) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userID);
            pstmt.setString(2, userPassword);
            pstmt.setString(3, userName);
            pstmt.setString(4, userEmail);
            pstmt.executeUpdate();
	System.out.println();
            out.println("Join Successful");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
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
		System.out.println();
            }
        }
	response.sendRedirect("login.jsp");
    %>
</body>
</html>
