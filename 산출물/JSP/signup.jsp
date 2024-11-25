<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<form action="signup_action.jsp" method="post" style="border:1px solid #ccc">
    <div class="container">
      <meta charset="UTF-8" />
      <h1>Sign Up</h1>
      <p>sign up your information. </a></p>
      <hr>
      <link rel="stylesheet" href="/css/login.css"/>
      <link rel="stylesheet" href="/css/signup.css"/>
      
      <label for="userID"><b>ID</b></label>
      <input type="text" placeholder="Enter ID" name="userID" id="userID" required>
  
      <label for="userPassword"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="userPassword" id="userPassword" required>
  
      <label for="userName"><b>Name</b></label>
      <input type="text" placeholder="Enter Name" name="userName" id="userName" required>

      <label for="userEmail"><b>email</b></label>
      <input type="text" placeholder="Enter email" name="userEmail" id="userEmail" required>
  
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>
      </form>
  
      <div class="clearfix">
        
      <a href="login.jsp"><button type="submit" class="signupbtn">Sign Up</button></a>
      <a href="login.jsp"><button type="button" class="cancelbtn">Cancel</button></a>
        
      </div>
   
    </div>
  </form>
