<%-- 
    Document   : users
    Created on : Nov 17, 2021, 9:19:05 AM
    Author     : asus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <c:forEach var="car" items="$(cars)" varStatus="status">
    <div class="row">
        <div class="col-md-4">
            $(car.licensePlate)
        </div>
        <div class="col-md-4">
             $(car.parkingSpot)
        </div>
         <div class="col-md-4">
             $(car.username)
        </div>
    </div>
    </c:forEach>
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
