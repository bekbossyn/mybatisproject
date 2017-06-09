<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<title>Дата из базы данных</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="datepicker/css/datepicker.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

</head>

	<body>
	
	
	
		<script src="jquery-1.8.3.js">
		
		</script>
	
		<script src="bootstrap/js/bootstrap.js">
			
		</script>
		
	
	
	
		<h2 align = "center">Все данные из базы данных</h2>
		<%
		try {
		/* Create string of connection url within specified format with machine
		name, port number and database name. Here machine name id localhost and 
		database name is student. */
		String connectionURL = "jdbc:mysql://student-dev.c4wmdt9lscoq.us-east-2.rds.amazonaws.com:3306/words";
		// declare a connection by using Connection interface
		Connection connection = null;
		/* declare object of Statement interface that is used for executing sql 
		statements. */
		Statement statement = null;
		// declare a resultset that uses as a table for output data from tha table.
		ResultSet rs = null;
		// Load JBBC driver "com.mysql.jdbc.Driver"
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		/* Create a connection by using getConnection() method that takes parameters 
		of string type connection url, user name and password to connect to database.*/
		connection = DriverManager.getConnection(connectionURL, "yourname", "truesight7");
		/* createStatement() is used for create statement object that is used for 
		sending sql statements to the specified database. */
		statement = connection.createStatement();
		// sql query to retrieve values from the secified table.
		String QueryString = "SELECT * from word";
		rs = statement.executeQuery(QueryString);
		%>
	<%
	while (rs.next()) {
	%>

	<div class="col-lg-6 col-lg-offset-3">
			<div class="well">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
								<fieldset>
									<legend>Первичный ключ: <%=rs.getInt(1)%></legend>
									<div class="form-group">
										Слово : <%=rs.getString(2)%>
									</div>
								</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
	<% } %>
	<%
	// close all the connections.
	rs.close();
	statement.close();
	connection.close();
	} catch (Exception ex) {
	%>
	<font size="+3" color="red"></b>
	<%
	out.println("Невозможно подключиться к базе.");
	}
	%>
		<table>
			<tr>
				<td><form ACTION="index.jsp" method="get" >
					<button type="submit"><-- Назад</button>
				</td>
			</tr>
		</table>
	</font>
	</body>
</html>