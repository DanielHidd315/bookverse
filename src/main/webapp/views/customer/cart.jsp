<%-- 
    Document   : cart.jsp
    Created on : Feb 22, 2026, 8:18:07 PM
    Author     : TrungNT - CE200064
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
    </head>
    <body>
        <h1>Your cart</h1>
        <c:if test="${empty requestScope.cartList}">
            <p>Your cart is empty. <a href="home">Go to homepage</a></p>
        </c:if>

        <c:if test="${not empty requestScope.cartList}">
            <table>
                <thead>
                    <tr>
                        <th></th>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.cartList}" var="item">
                        <tr>
                            <td>
                                <img src="${item.productId.imageUrl}" alt="${item.productId.name}" class="img-product">
                            </td>

                            <td>${item.productId.name}</td>

                            <td>
                                <fmt:formatNumber value="${item.productId.price}" pattern="#,###"/> đ
                            </td>

                            <td>
                                ${item.cartQuantity}
                            </td>

                            <td>
                                <fmt:formatNumber value="${item.productId.price * item.cartQuantity}" pattern="#,###"/> đ
                            </td>

                            <td>
                                <a href="delete-cart?id=${item.cartId}" onclick="return confirm('Do you want to remove this product?');">Remove</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="total-section">
                Total: <fmt:formatNumber value="${cartTotal}" pattern="#,###"/> đ
                <br>
                <button onclick="location.href = 'checkout'">Place Order</button>
            </div>
        </c:if>
    </body>
</html>
