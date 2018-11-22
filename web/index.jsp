<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div id="container">
		<header>
			<h1>
				<span>Web shop</span>
			</h1>
			<nav>
				<ul>
					<li id="actual"><a href="Controller?action=index">Home</a></li>
					<li><a href="Controller?action=overview">Users</a></li>
					<li><a href="Controller?action=signUp">Sign up</a></li>
					<li><a href="Controller?action=productOverview">Products</a></li>
					<li><a href="Controller?action=addProductPage">Add Product</a></li>
					<li><a href="Controller?action=cart">Cart</a></li>
				</ul>
			</nav>
			<h2>Home</h2>

		</header>
		<main>
			<p>Sed ut perspiciatis unde omnis iste natus error sit
			voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque
			ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae
			dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
			aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
			qui ratione voluptatem sequi nesciunt.</p>
		</main>
		<footer> &copy; Testing, UC Leuven-Limburg </footer>
	</div>
</body>
</html>