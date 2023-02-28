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
	<div style="display: flex; justify-content: space-around;">
		<h1>Expense Details</h1>
		<a href="/">go back</a>
	</div>
	

	
		<table class="table table-primary">
  <thead>
    <tr>
      <th scope="col">Expense</th>
      <th scope="col">Details</th>
    </tr>
  </thead>
  <tbody class="table-group-divider">
  <c:forEach var="expense" items="${expenses}">
    <tr>
      <th scope="row">Expense Name:</th>
      <td>${expense.expense_name}</td>
    </tr>
    <tr>
      <th scope="row">Expense Description:</th>
      <td>${expense.description}</td>
    </tr>
    <tr>
      <th scope="row">Vendor:</th>
      <td>${expense.vendor}</td>
    </tr>
    <tr>
      <th scope="row">Amount Spent:</th>
      <td>${expense.amount}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
			
				
			

</body>
</html>