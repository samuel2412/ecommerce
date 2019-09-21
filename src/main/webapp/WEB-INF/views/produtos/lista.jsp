<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8>
    <title>Livros de Java, Android, iPhone, PHP, Ruby e muito mais - Casa do Código</title>
</head>
<body>
    <h1>Lista de Produtos</h1>
    <table>
        <tr>
            <td>Nome</td>
            <td>Descrição</td>
            <td>Marca</td>
            <td>Imagem</td>
            <td>Preco</td>
        </tr>
        <c:forEach items="${produtos}" var="produto">
            <tr>
                <td>${produto.nome}</td>
                <td>${produto.descricao}</td>
                <td>${produto.marca}</td>
                <td>${produto.imagem}</td>
                <td>${produto.preco}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>