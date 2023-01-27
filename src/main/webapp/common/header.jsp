<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
 <nav class="navbar navbar-expand-md navbar-dark"
  style="background-color: #2596be;">
  <div>
   <a href="<%= request.getContextPath() %>/" class="navbar-brand"> HTML Tips</a>
  </div>

  <ul class="navbar-nav navbar-collapse justify-content-end">
  	<% if(session.getAttribute("username")==null){%>
  		<li><a href="<%= request.getContextPath() %>/register.jsp" class="nav-link">Register</a></li>
   		<li><a href="<%= request.getContextPath() %>/login.jsp" class="nav-link">Login</a></li>
  	<% }else{ %>
		<li><a href="<%= request.getContextPath() %>/Logout" class="nav-link">Logout</a></li>
	   	<li><a href="<%= request.getContextPath() %>/tipCreation.jsp" class="nav-link">Create Tip</a></li>  	
  	<% } %>
   	
  </ul>
 </nav>
</header>