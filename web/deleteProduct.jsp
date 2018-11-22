<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="UTF-8">
    <title>Delete Product</title>
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
            Delete Product
        </h2>

    </header><main>
    <h3>Do you really want to delete this product?</h3>
    <p><a href="Controller?action=deleteProduct&productId=${productId}" class="back">Delete</a>   <a href="Controller?action=productOverview" class="back">Cancel</a></p>

</main>
    <footer>
        &copy; Testing, UC Leuven-Limburg
    </footer>
</div>
</body>
</html>