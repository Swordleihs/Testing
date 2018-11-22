<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
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
                <li id="actual"><a href="Controller?action=cart">Cart</a></li>
            </ul>
        </nav>
        <h2>
            Shopping Cart
        </h2>

    </header><main>
    <c:if test="${producten != null}">
        <table id="overview">
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
            </tr>
            <c:forEach var="product" items="${producten}">
                <tr>
                    <td><a href="Controller?action=updateProductPage&id=${product.productId}">${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td><a href="Controller?action=deleteProductPage&productId=${product.productId}">Delete</a></td>
                </tr>
            </c:forEach>
            <caption>My Products</caption>
        </table>
    </c:if>
    <c:if test="${producten == null}">
        <p>Shopping Cart Empty</p>
    </c:if>
</main>
    <footer>
        &copy; Testing, UC Leuven-Limburg
    </footer>
</div>
</body>
</html>