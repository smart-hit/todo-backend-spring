<%@ include file="common/header.jspf" %>
	<%@ include file="common/navigation.jspf" %>
	<div class="container">
		<div>
		<h1>Your Tasks</h1>
		</div>
		<hr>
		
		<table class="table">
			<thead>
				<tr>
					
					<th>Description</th>
					<th>Target Date</th>
					<th>Is Done?</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todo}" var="todo">
					<tr>
					
						<td>${todo.description}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done ? 'Yes' : 'No'}</td>
						<td><a href="delete-todo?id=${todo.id}" class="btn btn-Warning">Delete </a></td>
						<td><a href="update-todo?id=${todo.id}" class="btn btn-success">Update </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="add-todo" class="btn btn-success">Add Todo</a>
	</div>
	<%@ include file="common/footer.jspf" %>
