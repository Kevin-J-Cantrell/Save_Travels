<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<style>
</style>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css" />

<meta charset="UTF-8">
<title>Save Travels</title>
</head>
<body >
	<div class="container  col-5" >
		<h1>Save Travels</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Expense</th>
					<th>Vendor</th>
					<th>Amount</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses}">
					<tr>
						<td><a href="/show">${expense.expense_name}</a></td>
						<td>${expense.vendor}</td>
						<td>${expense.amount}</td>
						<td><a href="/edit/${expense.id}">edit</a> |
							<form action="/delete/${expense.id}" method="post">
								<input type="hidden" name="_method" value="delete"> <input
									type="submit" value="Delete">
							</form>
							</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h3>Add an expense:</h3>
		<form:form action="/create" method="post" modelAttribute="expence">
			<div class="row mb-1">
				<div class="col-3">
					<form:label path="expense_name" class="form-label">Expense Name: </form:label>
					<form:input type="text" path="expense_name" class="form-control"
						value="Create expense" />
					<form:errors path="expense_name"></form:errors>
				</div>
			</div>
			<div class="row mb-1">
				<div class="col-3">
					<form:label path="vendor" class="form-label">Vendor: </form:label>
					<form:input type="text" path="vendor" class="form-control"
						value="Vendor name" />
					<form:errors path="vendor"></form:errors>
				</div>
			</div>
			<div class="row mb-1">
				<div class="col-3">
					<form:label path="amount" class="form-label">Amount: </form:label>
					<form:input type="number" path="amount" class="form-control"
						value="0" />
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
	</div>
</body>
</html>