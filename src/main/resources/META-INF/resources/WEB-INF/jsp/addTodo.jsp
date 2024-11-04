<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" >
	<link href="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" rel="stylesheet">
	<title>Add Todo Page</title>
</head>
<body>
	<%@ include file="common/navigation.jspf" %>
	<div class="container">
		<div>
		<h1>Enter Todo Details</h1>
		</div>
		<hr>
		<form:form method="post" modelAttribute="todo">
			<fieldset class="mb-3">
			<form:label path="description">Description</form:label>
		    <form:input type="text" name="description" required="required" path="description"/>
			<form:errors  path="description" cssClass="text-warning" />
			<fieldset>
			</fieldset class="mb-3"> 
			<form:label path="targetDate">Target Date</form:label>
			<form:input type="text"  required="required" path="targetDate"/>
			<form:errors  path="targetDate" cssClass="text-warning" />
			<fieldset>
			<form:input type="hidden"  path="id"/>
			<form:input type="hidden"  path="done"/>
			<input type="submit" class="btn btn-success">
			
		</form:form>
	</div>
	<%@ include file="common/footer.jspf" %>
	<script type="text/javascript">
		$('#targetDate').datepicker({
		    format: 'yyyy-mm-dd'
		});
		</script>
		
