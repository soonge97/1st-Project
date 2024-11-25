<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<form action="login_action.jsp" method="post">
    <div class="imgcontainer">
          <img src="/assets/shoes_purple.png"  class="avatar">
           
    </div>
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/cart.css" />
    <link rel="stylesheet" href="/css/login.css"/>

    <div class="container">
      <label for="userID"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" id="userID" name="userID" required>
  
      <label for="userPassword"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" id="userPassword" name="userPassword" required>

      <button type="submit">Login</button>
     
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
  
    <div class="container" style="background-color:#ffffff">
        <a href="signup.jsp"><button type="button" class="signupbtn">Sign Up</button></a>
	<a href="index.jsp"><button type="button" class="cancelbtn">Cancel</button></a>
    </div>
  </form>
</html>
  
