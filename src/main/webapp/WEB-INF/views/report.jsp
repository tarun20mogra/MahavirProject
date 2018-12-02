<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="mytags"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.mahavir.MahavirProject.model.Holder"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reportStyle.css"
	type="text/css">

<mytags:style />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	String result = (String) request.getAttribute("success");
	if(result!=null && result.equals("true")){%>
		<span style="color: green"><%= result %></span>
	<% } %>
	<div class="container">
		<div class="row serchRow">
			<div class="card colBody shadow p-3 mb-5 bg-white rounded selectCard">
				<Strong>Select options to generate the report</Strong>
				<div class="selectOption">
					<form action="report.htm" method="post">
						<select class="select" name="selectReport">
							<option value="1">Holder report</option>
							<option value="2">Item report</option>
							<option value="3">Due Report</option>
							<option value="4">Cash report</option>
						</select>
						<button type="submit" name="action" value="search">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>

			</div>


		</div>
		<div class="row">
			<%
				ArrayList<Holder> holderList = (ArrayList<Holder>) request.getAttribute("holderList");
				if (holderList != null) {
			%>
			<table class="reportTable">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Address</th>
					<th>Contact</th>
					<th></th>
				</tr>

				<%
					for (Holder holder : holderList) {
				%>

				<tr>
					<td class = "holderId"><%=holder.getId()%></td>
					<td><%=holder.getName()%></td>
					<td><%=holder.getPlace()%></td>
					<td><%=holder.getContact()%></td>
					<td style="diplay: inline">
						<button type="button" class = "updateButton" name="updateHolder" id="updateHolder" value="<%=holder.getId()%>" data-toggle="modal"
							data-target="#upadteHolderModal">
							<i class="fa fa-edit"></i>
						</button>
						<button type="submit" name="update">
							<i class="fa fa-trash"></i>
						</button>
						<p><%=holder.getId()%></p>
					</td>
				</tr>

				<%
					}
					}
				%>
			</table>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="upadteHolderModal" role="dialog">
			<jsp:include page="updateHolder.jsp" />
		</div>
	</div>
	<mytags:script />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/report.js"></script>

</body>
</html>