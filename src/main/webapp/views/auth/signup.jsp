<%-- 
    Document   : signup
    Created on : Mar 20, 2026, 7:35:05 PM
    Author     : huyqu
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account - Bookverse</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/signup.css">
</head>
<body>

    <div class="main-wrapper">
        <div class="signup-card">
            
            <h2>Create Account</h2>
            <p class="subtitle">Join our book community today</p>

            <c:if test="${not empty errorMsg}">
                <div class="alert alert-danger">
                    <strong>Error:</strong> ${errorMsg}
                </div>
            </c:if>

            <form action="${pageContext.request.contextPath}/signup" method="POST">
                
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" value="${username}" required placeholder="Enter username">
                </div>

                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullName" class="form-control" value="${fullName}" required placeholder="e.g. Nguyen Van A">
                </div>

                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" class="form-control" value="${email}" required placeholder="name@example.com">
                </div>

                <div class="form-group">
                    <label>Phone Number</label>
                    <input type="text" name="phone" class="form-control" value="${phone}" required placeholder="Your phone number" pattern="[0-9]{10,11}">
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" required placeholder="Create a password">
                </div>
                
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" name="confirmPassword" class="form-control" required placeholder="Repeat your password">
                </div>

                <button type="submit" class="btn-submit">Create Account</button>
            </form>

            <div class="login-link">
                Already have an account? <a href="${pageContext.request.contextPath}/login">Sign In</a>
            </div>
            
        </div>
    </div>

    <div class="footer">
        <div class="footer-col" style="flex: 2; min-width: 200px;">
            <h4>Book-SWP-G5</h4>
            <p style="color: #ddd; line-height: 1.6;">Your trusted partner for quality<br>books and series collections.</p>
        </div>
        <div class="footer-col" style="flex: 1; min-width: 120px;">
            <h5>Quick Links</h5>
            <ul><li>Home</li><li>Books</li><li>Series</li><li>Categories</li></ul>
        </div>
        <div class="footer-col" style="flex: 1; min-width: 120px;">
            <h5>Support</h5>
            <ul><li>About Us</li><li>FAQ</li><li>Feedback</li></ul>
        </div>
        <div class="footer-col" style="flex: 1.5; min-width: 150px;">
            <h5>Contact</h5>
            <ul>
                <li>FPTU Can Tho Campus</li>
                <li>Email: info@bookstore.com</li>
                <li>Phone: (123) 456-7890</li>
            </ul>
        </div>
    </div>
    
    <div class="footer-bottom">
        © 2026 BookStore. All rights reserved.
    </div>

</body>
</html>
