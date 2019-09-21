<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livros de Java, Android, iPhone, PHP, Ruby e muito mais -
	Casa do Código</title>
</head>
<body>
	<form action="/ecommerce/produtos" method="POST">
		<div>
			<label>Nome</label> <input type="text" name="nome" />
		</div>
		<div>
			<label>Descrição</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<div>
			<label>Marca</label> <input type="text" name="marca" />
		</div>
		<div>
			<label>Imagem</label> <input type="text" name="imagem" />
		</div>
		<button type="submit">Cadastrar</button>
	</form>
</body>
</html>