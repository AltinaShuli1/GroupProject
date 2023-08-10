<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>External Data</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">

  <!-- Error Display -->
  <c:if test="${not empty error}">
    <div class="alert alert-danger">
      <strong>Error:</strong> ${error}
    </div>
  </c:if>

  <!-- Display Books Data -->
  <!-- Dynamic Content -->
  <div class="container">
    <div class="mt-2">
      <!-- Display error message if any -->
      <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
      </c:if>

      <!-- Loop through the list of API data items and display them -->
      <div class="list-group">
        <c:forEach items="${apiData}" var="item">
          <div class="card mb-2">
            <div class="row align-items-center">
              <div class="col-sm-2">
                <img src="${item.image}" alt="${item.title}" width="100%">
              </div>
              <div class="col-sm-10">
                <div class="card-body">
                  <h5 class="card-title">${item.title}</h5>
                  <!-- Add other fields as required. Adjust according to the structure of ApiDataItem -->
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
  </div>


</div>

<!-- JS Dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
