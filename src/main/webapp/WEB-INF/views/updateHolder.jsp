<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reportStyle.css"
	type="text/css">
<mytags:style />

</head>
<body>
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header modalHeader">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">update holder</h4>
			</div>
			<div class="modal-body">
			<form action="report.htm" method="post">
			<div class="form-group">
					<label>Holder Id</label> <input type="hidden" id="id" name="holderId"/>
				</div>
				<div class="form-group"> 
					<label>Holder Name</label> <input type="text" class="form-control"
						name="holderName" required>
				</div>
				<div class="form-group">
					<label>Holder Place</label> <input type="text" class="form-control"
						name="holderPlace" required>
				</div>
				<div class="form-group">
					<label>Holder Contact</label> <input type="text"
						class="form-control" name="holderContact" required>
				</div>
				<div style="margin-top: 10px; display: inline-block;">
					<button type="submit" class="btn btn-secondary" name="saveItem"
						value="saveItem">Save</button>
					<button type="reset" class="btn btn-secondary" name="action"
						value="reset">Reset</button>

				</div>
				</form>
			</div>
			<div class="modal-footer modalFooter">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
	<mytags:script />

</body>
</html>