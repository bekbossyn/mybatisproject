<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<style>
body {
	height: 100%;
	margin: 0;
	background: url(assets/img/books.jpg);
	background-size: 2200px 610px;	
	background-repeat: no-repeat;
	display: compact;
}
</style>
<%@page pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
</head>
<body>
	<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">Начальная Страница</a></li>
				<li><a href="signup.html">Добавить слово в базу данных</a></li>
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Посмотреть<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Связаться с нами</a></li>
						<li class="divider"></li>
						<li><a href="#">Больше действий</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>Добро пожаловать в мою базу данных</h1>
				
								<%
								String connectionURL = "jdbc:mysql://student-dev.c4wmdt9lscoq.us-east-2.rds.amazonaws.com:3306/words";
								Connection connection = null;
								Statement statement = null;
								ResultSet rs= null;
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
									boolean ff= false;
									while (rs.next()) {
										 ff= true;
									%>
									<p>первое слово:
									<span style="font-size: 40px !important;">[<%=rs.getString(2)%>]</span>
									 с Первичным ключом : 
									<span style="font-size: 40px !important;">[<%=rs.getInt(1)%>]</span>
									</br>
									<%break;} if (ff==false)
										%><%{
											%><p>Извините, база пока что пуста !</p><%
									} %>
				<p>Чтобы добавить слово в базу данных вы должны перейти по соответствующей ссылке.</p>
					<a href="ConnectJspToMysql.jsp"><font size="4" color="blue">Посмотреть весь список слов в базе данных.</font></a>
			</div>
		</div>
		<div></div>
	</div>
	<script src="jquery-1.8.3.js">
</script>
	<script src="bootstrap/js/bootstrap.js">
</script>
</body>
</html>