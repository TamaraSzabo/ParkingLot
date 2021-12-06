<%-- 
    Document   : addCar
    Created on : Nov 23, 2021, 5:26:31 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:pageTemplate pageTitle="Add Car">
          <h1>Add Car</h1>
          <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPAth}/AddCar">
              <div class="row">
                  <div class="col-md-6 mb-3">
                      <label for="livense_plate">License Plate</label>
                      <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value="" required>
                      <div class="invalid-feedback">
                          License Plate is required.
                      </div>
                  </div>
              </div> 
              
               <div class="row">
                  <div class="col-md-6 mb-3">
                      <label for="parking_spot">Parking Spot</label>
                      <input type="text" class="form-control" id="license_plate" name="parking_spot" placeholder="" value="" required>
                      <div class="invalid-feedback">
                           Parking Spot is required.
                      </div>
                  </div>
              </div> 
              
               <div class="row">
                  <div class="col-md-6 mb-3">
                      <label for="owner_id">Owner</label>
                      <select class="custom-select d-block w-100" id="owner_id" name="owner_id" required>
                          <option value="">Choose...</option>
                          <c:forEach var="user" items="$(user)" varStatus="status">
                              <option value="$(user.id)">$(user.username)</option>
                          </c:forEach>
                      </select>
                      <div class="invalid-feedback">
                          Please select an owner.
                      </div>
                  </div>
               </div>    
                   
         <p><a class="btn btn-primary btn-lg" href="https://getbootstrap.com/docs/4.0/examples/jumbotron/#" role="button">SAVE</a></p>
     
         <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
    
   
</t:pageTemplate>
