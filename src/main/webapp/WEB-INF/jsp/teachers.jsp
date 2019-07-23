<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"/>

<div class="container">
    <div class="row">
        <div class="col col-md-6">
            <form class="form-inline" action="info">
                <input type="text" name="id" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Enter Student ID">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
        <div class="col col-md-2">
            <a class="btn btn-primary pull-right" href="<c:url value="/teachers/add"/>">Add</a>
        </div>
    </div>

    <h2>All Teachers</h2>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Subject</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${teachers}" var="teacher">
            <tr>
                <td>${teacher.id}</td>
                <td>${teacher.firstName} ${teacher.lastName}</td>
                <td>${teacher.lastName}</td>
                <td>${teacher.subject}</td>
                <td>
                    <a class="btn btn-primary" href="<c:url value="/teachers/${teacher.id}/edit"/>">Edit</a>
                    <a class="btn btn-danger" href="<c:url value="/teachers/${teacher.id}/delete"/>">Delete</a>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<jsp:include page="footer.jsp"/>