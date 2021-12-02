<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/1/21
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/pizza-order" method="post">
    <label for="crustType">Crust Type</label>
    <select name="crustType" id="crustType">
        <option value="thin">Thin</option>
        <option value="hand-tossed">Hand Tossed</option>
        <option value="stuffed">Stuffed</option>
    </select>
    <br> <br>
    <label for="sauceType">Sauce</label>
    <select name="sauce" id="sauceType">
        <option value="traditional">Traditional</option>
        <option value="alfredo">Alfredo</option>
        <option value="bbq">BBQ</option>
    </select>
    <br> <br>
    <label for="size">Size</label>
    <select name="size" id="size">
        <option value="small">Small</option>
        <option value="med">Medium</option>
        <option value="lg">Large</option>
    </select>
    <br><br>
    <label for="pepperoni">Pepperoni</label>
    <input type="checkbox" id="pepperoni" value="pepperoni">
    <br>
    <label for="cheese">Cheese</label>
    <input type="checkbox" id="cheese" value="cheese">
    <br>
    <label for="sausage">Sausage</label>
    <input type="checkbox" id="sausage" value="sausage">
    <br>
    <label for="address">Delivery Address</label>
    <input type="text" id="address">
    <button type="submit" value="Submit">Order</button>
</form>
