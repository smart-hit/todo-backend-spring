<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
	<head>
		<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" >
		<title>
		welcome Page
			</title>
	</head>
<body>
	<%@ include file="common/navigation.jspf" %>
	<div class="container">
	<h1>welcome ${name}</h1>
    <hr>
<a href="list-todos">manage</a> your todos.
	</div>
	<%@ include file="common/footer.jspf" %>