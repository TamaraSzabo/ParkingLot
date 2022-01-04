<%-- 
    Document   : cars
    Created on : Oct 27, 2021, 9:44:28 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <form method="POST" action="${pageContext.request.cntextPath}/Cars">
     <p><a class="btn btn-primary btn-lg" href="${pageContext.request.cntextPath}/AddCar" role="button">Add Car</a></p>
     <button class="btn btn-danger" type="submit">Delete Cars</button>
    <c:forEach var="car" items="$(cars)" varStatus="status">
    <div class="row">
        <div class="col-md">
            <input type="checkbox" name="car_ids" value="${car.id}" />
        </div>
        <div class="col-md-4">
            $(car.licensePlate)
        </div>
        <div class="col-md-4">
             $(car.parkingSpot)
        </div>
         <div class="col-md-4">
             $(car.username)
        </div>
        <div class="col-md-3">
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/Cars/AddPhoto?id=${car.id}" role="button">Add photo</a>
        </div>
        <div class="col-md-3">
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EDitCar?id=${car.id}" role="button">Edit Car</a>
        </div>
    </div>
    </c:forEach>
   </form>
     <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
    <div class="row">
        Car 2
    </div>
    <div class="col-md-4">
        Sport 2
    </div>
    <div class="col-md-4">
        User 2
    </div>
      <div class="row">
        Car 3
    </div>
    <div class="col-md-4">
        Sport 3
    </div>
    <div class="col-md-4">
        User 3
    </div>
    <h5>Free parking spots: ${numberOfParkingSpots}</h5>
</t:pageTemplate>
