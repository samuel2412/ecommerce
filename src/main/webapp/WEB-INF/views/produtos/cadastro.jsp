<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<h1>Casa do Código</h1>
	<form action="/ecommerce/produtos" method="post">
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
		<div>
			<label>Preço</label> <input type="text" name="preco" />
		</div>


		<button type="submit">Cadastrar</button>
	</form>
</body>
</html>