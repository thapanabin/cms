<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"/>
<div class="container">
    <h2>Teacher Details</h2>
    <div class="form-group row">
        <label class="col-2 col-form-label">ID</label>
        <div class="col-10">
            ${teacher.id}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-2 col-form-label">First Name</label>
        <div class="col-10">
            ${teacher.firstName}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-2 col-form-label">Last Name</label>
        <div class="col-10">
            ${teacher.lastName}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-2 col-form-label">Subject</label>
        <div class="col-10">
            ${teacher.subject}
        </div>
    </div>

    <div class="form-group row">
        <a class="btn btn-default" href="<c:url value="/"/>">Main Page</a>
    </div>
</div>

<jsp:include page="footer.jsp"/>