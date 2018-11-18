<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projeto Spring MVC :: Cadastrar Pessoa</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>


</head>
<body>
	<div class="container-fluid">

		<div class="well">
			<h1>Projeto Spring MVC</h1>
			<a href="listar.html">Listar Pessoas</a>
		</div>

		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="panel-title">Cadastrar Pessoa Sring MVC</div>
				</div>

				<div class="panel-body">
					<form action="cadastrar.html" method="post" role="form">
						<label for="nome">Nome</label> 
						<input type="text" name="nome"
							id="nome" value="" required="required" size="35"
							class="form-control" 
							placeholder="Digite o Nome"
							title="Digite o nome" /> 
							
						<label for="email">Email</label> 
						<input type="email" name="email" id="email" value="" 
							required="required"
							size="35" class="form-control" 
							placeholder="Digite o email"
							title="Digite o email" /> 
							
						<br />
						<button type="submit" 
							class="btn btn-info btn-xs">
							Gravar os Dados
						</button>
					</form>
				</div>

				<div class="panel-footer">${msg}</div>
			</div>
		</div>
	</div>
</body>
</html>