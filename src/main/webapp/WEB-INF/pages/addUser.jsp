<%-- 
    Document   : addUser
    Created on : Dec 21, 2021, 7:48:45 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:pageTemplate pageTitle="Add User">
          <h1>Add User</h1>
          <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPAth}/AddUser">
              <div class="row">
                  <div class="col-md-6 mb-3">
                      <label for="username">License Plate</label>
                      <input type="text" class="form-control" id="license_plate" name="username" placeholder="" value="" required>
                      <div class="invalid-feedback">
                          Username is required.
                      </div>
                  </div>
              </div> 
              
               <div class="row">
                  <div class="col-md-6 mb-3">
                      <label for="email">Email</label>
                      <input type="email" class="form-control" id="license_plate" name="email" placeholder="" value="" required>
                      <div class="invalid-feedback">
                           Email is required.
                      </div>
                  </div>
              </div> 
              
              <div class="row">
                  <div class="col-md-6 mb-3">
                      <label for="password">Password</label>
                      <input type="passwrd" class="form-control" id="license_plate" name="password" placeholder="" value="" required>
                      <div class="invalid-feedback">
                           Password is required.
                      </div>
                  </div>
              </div>
              
               <div class="row">
                  <div class="col-md-6 mb-3">
                      <label for="position">Position</label>
                      <select class="custom-select d-block w-100" id="owner_id" name="oposition" required>
                          <option value="">Choose...</option>
                          <option value="ADMINISTRATOR">Administrator</option>
                          <option value="CLIENT">Client</option>
                      </select>
                      <div class="invalid-feedback">
                          Please select a position.
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
