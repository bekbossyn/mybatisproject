<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<title>Добавление в базу данных</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="datepicker/css/datepicker.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.green {
	font-weight: bold;
	color: green;
}

.message {
	margin-bottom: 10px;
}

.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
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
				<li class="active"><a href="index.jsp">Начальная Страница</a></li>
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

	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script src="datepicker/js/bootstrap-datepicker.js">
		
	</script>


	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>Добавление новой записи в базу данных</h1>
				<p>Это быстро</p>
			</div>
		</div>

		<div></div>
	</div>

	<c:if test="${not empty message}">
		<div class="message green">${message}</div>
	</c:if>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form id="myForm" method="post"
							class="bs-example form-horizontal" commandName="word">
							<fieldset>
								<legend>Форма добавления данных</legend>

								<div class="form-group">
									<label for="wordInput" class="col-lg-3 control-label">Слово</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="userName"
											id="userNameInput" placeholder="Слово" />
										<form:errors path="userName" cssClass="error" />
									</div>
								</div>
								
								<div class="col-lg-9 col-lg-offset-3">
									

									<button class="btn btn-primary" data-toggle="modal"
										data-target="#themodal">Сохранить в базе</button>
									<div id="themodal" class="modal fade" data-backdrop="static">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h3>Заполнить базу?</h3>
												</div>
												<div class="modal-body">
													<p>Вы уверены?</p>
													<div class="progress progress-striped active">
														<div id="doitprogress" class="progress-bar"></div>
													</div>
												</div>
												<div class="modal-footer">
													<a href="#" class="btn btn-default" data-dismiss="modal">Закрыть</a>
													<input type="submit" value="Да" id="yesbutton"
														class="btn btn-primary" data-loading-text="Сохраняю.."
														data-complete-text="Сохранено">
												</div>
											</div>
										</div>
									</div>

								</div>

							</fieldset>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(function() {
			var yesButton = $("#yesbutton");
			var progress = $("#doitprogress");

			yesButton.click(function() {
				yesButton.button("loading");

				var counter = 0;
				var countDown = function() {
					counter++;
					if (counter == 11) {
						yesButton.button("complete");
					} else {
						progress.width(counter * 10 + "%");
						setTimeout(countDown, 100);
					}
				};
				setTimeout(countDown, 100);
			});

		});
	</script>


</body>
</html>