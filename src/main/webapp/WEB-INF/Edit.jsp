<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<style>
</style>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<meta charset="UTF-8">
<title>Save Travels</title>
</head>
<body>
<div style="display: flex;">
	<h1>Edit Expense</h1>
	<a href="/">Go Back</a>
	</div>
  <form:form action="/expence/${expence.id}" method="post" modelAttribute="expence">
  <input type="hidden" name="_method" value="put">
			<div class="row mb-1">
				<div class="col-2">
					<form:label path="expense_name" class="form-label">Expense Name: </form:label>
					<form:input type="text" path="expense_name" class="form-control" value="Expense Name" />
					<form:errors path="expense_name"></form:errors>
				</div>
			</div>
			<div class="row mb-1">
				<div class="col-2">
					<form:label path="vendor" class="form-label">Vendor: </form:label>
					<form:input type="text" path="vendor" class="form-control" value="Vendor" />
					<form:errors path="vendor"></form:errors>
				</div>
			</div>
			<div class="row mb-1">
				<div class="col-2">
					<form:label path="amount" class="form-label">Amount: </form:label>
					<form:input type="number" path="amount" class="form-control" value="0" />
					<form:errors path="amount"></form:errors>
				</div>
			</div>
			<div class="row mb-1">
				<div class="col">
					<p>Description:</p>
					<form:errors path="description"></form:errors>
					<form:textarea path="description"></form:textarea>
				</div>
			</div>
			<button type="submit" class="btn btn-primary mt-2">Submit</button>
		</form:form>
</body>
</html>