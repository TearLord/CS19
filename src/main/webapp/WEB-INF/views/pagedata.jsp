<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<title>Psychometric</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath }/asset/css/bootstrap.min.css" rel="stylesheet" type="text/css" />


<link rel="shortcut icon" href="${pageContext.request.contextPath }/asset/assets/images/favicon.ico">
<!-- third party css -->
<link href="${pageContext.request.contextPath }/asset/assets/libs/datatables/dataTables.bootstrap4.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/asset/assets/libs/datatables/responsive.bootstrap4.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/asset/assets/libs/datatables/buttons.bootstrap4.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/asset/assets/libs/datatables/select.bootstrap4.css" rel="stylesheet" type="text/css" />
<!-- third party css end -->

<!-- App css -->
<link href="${pageContext.request.contextPath }/asset/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/asset/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/asset/assets/css/app.min.css" rel="stylesheet" type="text/css" />





</head>
<body>
	<h1 class="display-4" align="center">Psychometric Mapping Tool</h1>



	<ul class="nav">
		<li class="nav-item"><a class="nav-link active"
			href="/cs19/mapping/upload">Upload</a></li>
		<li class="nav-item"><a class="nav-link"
			href="/cs19/mapping/data">Projection</a></li>
			<li class="nav-item"><a class="nav-link"
			href="/cs19/mapping/questionnaire">Questionnaire List</a></li>
	</ul>

	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-body">


					<table id="basic-datatable" class="table dt-responsive nowrap">
						<thead>
							<tr>

								<th scope="col">Psychometric Space</th>
								<th scope="col">Numeric Space</th>
								<th scope="col">Algorithm</th>
								<th scope="col">Action</th>
								<!-- <th scope="col">Detail</th> -->
							</tr>
						</thead>


						<c:forEach items="${map.documentData }" var="data">

							<tr>

								<td>${data.psychometricSpace}</td>
								<td>${data.numericSpace}</td>
								<td>${data.algorithm}</td>
								<td><a href="/cs19/mapping/data/${data.idString}">Detail</a></td>
								
							</tr>

						</c:forEach>
					</table>

				</div>
				<!-- end card body-->
			</div>
			<!-- end card -->
		</div>
		<!-- end col-->
	</div>
	<!-- end row-->



</body>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>


<!-- Vendor js -->
<script src="${pageContext.request.contextPath }/asset/assets/js/vendor.min.js"></script>

<!-- third party js -->
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/dataTables.bootstrap4.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/responsive.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/buttons.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/dataTables.keyTable.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/datatables/dataTables.select.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/pdfmake/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath }/asset/assets/libs/pdfmake/vfs_fonts.js"></script>
<!-- third party js ends -->

<!-- Datatables init -->
<script src="${pageContext.request.contextPath }/asset/assets/js/pages/datatables.init.js"></script>

<!-- App js-->
<script src="${pageContext.request.contextPath }/asset/assets/js/app.min.js"></script>

</html>
