<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Sandwich Condiments</h1>
<form action="home" method="post">
    <input type="checkbox" name="condimentOne" value="lettuce">
    <p>Lettuce</p>
    <input type="checkbox" name="condimentTwo" value="tomato">
    <p>Tomato</p>
    <input type="checkbox" name="condimentThree" value="mustard">
    <p>Mustard</p>
    <input type="checkbox" name="condimentFour" value="sprouts">
    <p>Sprouts</p>
    <button>Submit</button>
</form>
<c:if test="${not empty condimentModel}">
    <h1>Result</h1>
    <c:if test="${not empty condimentModel.condimentOne}">
        <p>${condimentModel.condimentOne}</p>
    </c:if>
    <c:if test="${not empty condimentModel.condimentTwo}">
        <p>${condimentModel.condimentTwo}</p>
    </c:if>
    <c:if test="${not empty condimentModel.condimentThree}">
        <p>${condimentModel.condimentThree}</p>
    </c:if>
    <c:if test="${not empty condimentModel.condimentFour}">
        <p>${condimentModel.condimentFour}</p>
    </c:if>
</c:if>
</body>
</html>