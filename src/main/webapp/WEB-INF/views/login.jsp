<%@taglib tagdir="/WEB-INF/tags" prefix="mytags" %>
<html>
<head>
<title>Login</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginStyle.css" type="text/css"></style>

<mytags:style/>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="card cardMain shadow p-3 mb-5 bg-white rounded">
				<div class="card-body cardBody">
					<div class="leftCol">
						<img src="${pageContext.request.contextPath}/images/logo.png">
					</div>


					<div class="rightCol">
						<div class="vl"></div>
						<div class="loginForm">
							<form action="login.htm" method="post">
								<input type="hidden" name="page" value="login" />
								
								<span style="color: red"></span>
								
								<div class="form-group">
									<label>Username:</label> <input type="text"
										class="form-control" name="username">
								</div>
								<div class="form-group">
									<label>Password:</label> <input type="password"
										class="form-control" name="password">
								</div>
								<div class="button">
									<button type="submit" class="btn btn-secondary" name="action"
										value="login">Login</button>
								</div>
								<div class="changePassword">
									<a
										href="http://localhost:8080/MahavirCloths/changePassword.jsp">Change
										Password</a>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

<mytags:script/>
	
</body>
</html>