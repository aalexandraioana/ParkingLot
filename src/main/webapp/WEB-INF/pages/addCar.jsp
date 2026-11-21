<%--
  Created by IntelliJ IDEA.
  User: alexa
  Date: 11/18/2026
  Time: 8:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Add Car">
            <h1>Add Car</h1>
            <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
            <div class="row">
                <div class="col-sm-6 mb-3">
                   <label for="license_plate">License plate</label>
                   <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="Your license plate" value ="" required>
                   <div class="invalid-feedback">
                    License plate is required.
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label for="parking_spot">Parking spot</label>
                    <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="Your parking spot" value ="" required>
                    <div class="invalid-feedback">
                        Parking spot is required.
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label for="owner_id">Select Owner: </label>
                    <select class="form-select d-block w-100" id="owner_id" name="owner_id" required>
                        <option value="">Choose...</option>
                        <c:forEach var="user" items="${users}" varStatus="status">
                            <option value="${user.id}">${user.username}</option>
                        </c:forEach>
                    </select>
                     <div class="invalid-feedback">
                        Selecting an owner is required.
                     </div>
                </div>
            </div>
            <button class="btn btn-primary btn-lg" type="submit">Save</button>
            </form>
</t:pageTemplate>
