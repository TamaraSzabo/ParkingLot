<%-- 
    Document   : cars
    Created on : Oct 27, 2021, 9:44:28 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <div class="row">
        Car 1
    </div>
    <div class="col-md-4">
        Sport 1
    </div>
    <div class="col-md-4">
        User 1
    </div>
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
