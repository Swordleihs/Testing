<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="UTF-8">
    <title>Check Password</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div id="container">
    <header>
        <h1><span>Web shop</span></h1>
        <nav>
            <ul>
                <li><a href="Controller?action=index">Home</a></li>
                <li><a href="Controller?action=overview">Users</a></li>
                <li><a href="Controller?action=signUp">Sign up</a></li>
                <li><a href="Controller?action=productOverview">Products</a></li>
                <li><a href="Controller?action=addProductPage">Add Product</a></li>
                <li><a href="Controller?action=cart">Cart</a></li>
            </ul>
        </nav>
        <h2>
            Check Password
        </h2>

    </header>
    <main>
        <h3>Fill out your password:</h3>
        <c:if test='${response != null}'>
            <c:if test='${nature.equals("p")}'>
                <p id="positive"><c:out value="${response}"/></p>
            </c:if>
            <c:if test='${nature.equals("n")}'>
                <p id="negative"><c:out value="${response}"/></p>
            </c:if>
            <p><a href="Controller?action=overview" class="back">Back</a></p>
        </c:if>
        <c:if test='${response == null}'>
            <form method="post" action="Controller?action=doCheck&userId=<c:out value='${userId}'/>" novalidate="novalidate">
                <p><label for="passwd">Password</label><input type="password" id="passwd" name="passwd" required></p>
                <p><input type="submit" id="check" value="Check"></p>
            </form>
        </c:if>
    </main>
    <footer>
        &copy; Testing, UC Leuven-Limburg
    </footer>
</div>
</body>
</html>
