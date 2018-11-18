<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projeto Spring MVC :: Listar Pessoas</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
</head>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

	<div class="container-fluid">

		<div class="well">
			<h1>Projeto Spring MVC</h1>
			<a href="/projetoTwoWayMVC/index.jsp">Voltar para Principal</a>
		</div>

		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="panel-title">Listar Pessoas</div>
				</div>

				<div class="panel-body">
					<c:if test="${fn:length(lst) >0 }">
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th>IdPessoa</th>
									<th>Nome</th>
									<th>Email</th>
									<th>Excluir</th>
								</tr>
							</thead>
							<c:forEach items="${lst}" var="linha">
								<tr>
									<td>${linha.idPessoa}</td>
									<td>${linha.nome}</td>
									<td>${linha.email}</td>
									<td class="text-center"><a
										href="/projetoTwoWayMVC/excluir/${linha.idPessoa}"
										title="Deseja Excluir?"> <i class="fa fa-trash"></i>
									</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
				</div>

				<div class="panel-footer">${msg}</div>
			</div>
		</div>
	</div>
</body>
</html>