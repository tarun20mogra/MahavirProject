<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="mytags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/dataentry.css"
	type="text/css">
<mytags:style />
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<div
			class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.htm">Mahavir
						Cloths</a></li>

				<li class="nav-item"><a class="nav-link" href="home.htm">Home</a>
				</li>

			</ul>
		</div>

		<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
			<ul class="navbar-nav ml-auto">

				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-sign-out"></span>Logout</a></li>
			</ul>
		</div>
	</nav>


	<%
		String error = (String) request.getAttribute("Error");
		String success = (String) request.getAttribute("Success");
		if (error != null) {
	%>
	<span style="color: red"><%=error%></span>
	<%
		}
	%>
	<%
		if (success != null) {
	%>
	<span style="color: green"><%=success%></span>
	<%
		}
	%>
	<div class="container" style="max-width: 100%; margin-top: 50px;">
		<div class="row">
			<div class="col-md-4 col-lg-4 colum">
				<div class="card cardMain shadow p-3 mb-5 bg-white rounded">
					<div class="card-body cardBody">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse1">Master Entry</a>
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="panel-group">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h6 class="panel-title">
														<a data-toggle="collapse" href="#inside-collapse1">Holder
															Entry</a>
													</h6>
												</div>
												<div id="inside-collapse1" class="panel-collapse collapse">

													<div class="panel-body border" style="padding: 15px;">
														<form action="dataentry.htm" method="post">
															<div>
																<div class="form-group">
																	<label>Holder Id</label> <input type="text"
																		class="form-control" name="holderId" required>
																</div>
																<div class="form-group">
																	<label>Holder Name</label> <input type="text"
																		class="form-control" name="holderName" required>
																</div>
																<div class="form-group">
																	<label>Holder Place</label> <input type="text"
																		class="form-control" name="holderPlace" required>
																</div>
																<div class="form-group">
																	<label>Holder Contact</label> <input type="text"
																		class="form-control" name="holderContact" required>
																</div>
															</div>
															<div style="margin-top: 10px; display: inline-block;">
																<button type="submit" class="btn btn-secondary"
																	name="saveHolder" value="saveHolder">Save</button>
																<button type="reset" class="btn btn-secondary"
																	name="action" value="reset">Reset</button>

															</div>
														</form>
													</div>

												</div>
											</div>
										</div>


										<div class="panel-group">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h6 class="panel-title">
														<a data-toggle="collapse" href="#inside-collapse2">Item
															Entry</a>
													</h6>
												</div>
												<div id="inside-collapse2" class="panel-collapse collapse">
													<div class="panel-body border" style="padding: 15px;">
														<form action="dataentry.htm" method="post">
															<div>
																<div class="form-group">

																	<input type="hidden" name="page" value="dataentry" />
																	<label>Item Id</label> <input type="text"
																		class="form-control" name="ItemId" required />
																</div>
																<div class="form-group">
																	<label>Item Name</label> <input type="text"
																		class="form-control" name="ItemName" required>
																</div>
																<div style="margin-top: 10px; display: inline-block;">
																	<button type="submit" class="btn btn-secondary"
																		name="saveItem" value="saveItem">Save</button>
																	<button type="reset" class="btn btn-secondary"
																		name="action" value="reset">Reset</button>

																</div>

															</div>
														</form>
													</div>

												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-lg-4">
				<div class="card cardMain shadow p-3 mb-5 bg-white rounded">
					<div class="card-body cardBody">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse2">Due Entry</a>
									</h4>
								</div>
								<div id="collapse2" class="panel-collapse collapse">
									<div class="panel-body border">
										<div style="padding: 10px;">
											<div class="form-group">
												<label>Holder Id</label> <input type="text"
													class="form-control" name="holderId">
											</div>
											<div class="form-group">
												<label>Holder Name</label> <input type="text"
													class="form-control" name="holderName">
											</div>
											<div class="form-group">
												<label>Holder Place</label> <input type="text"
													class="form-control" name="holderPlace">
											</div>
											<div class="form-group">
												<label>Holder Contact</label> <input type="text"
													class="form-control" name="holderContact">
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-lg-4">
				<div class="card cardMain shadow p-3 mb-5 bg-white rounded">
					<div class="card-body cardBody">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse3">Cash Entry</a>
									</h4>
								</div>
								<div id="collapse3" class="panel-collapse collapse">
									<div class="panel-body border">Panel Body</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<mytags:script />

</body>
</html>