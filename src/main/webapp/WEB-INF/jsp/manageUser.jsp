
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="../../images/icons/gdfgd.png"/>
    <!-- Bootstrap -->
    <link href="../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="../../build/css/custom.min.css" rel="stylesheet">
    <%
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        String date = sdf.format(new Date());
    %>

    <c:if test="${not empty loginError}">
        <script>
            window.addEventListener("load", function () {
                alert("${loginError}");
            });
        </script>
    </c:if>
    <%--Chrat--%>

    <script src="https://www.amcharts.com/lib/4/core.js"></script>
    <script src="https://www.amcharts.com/lib/4/charts.js"></script>
    <script src="https://www.amcharts.com/lib/4/themes/spiritedaway.js"></script>
    <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
    <%--/Pie Chrat--%>

    <!-- Datatables -->
    <link href="../../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">

    <style>
        .large-btn {
            height: 40px;
            width: 100%;
            font-family: "Playfair Display", Georgia, "Times New Roman", serif;
            font-weight: bolder;

        }

        .large-btn:hover {
            color: #0f0f0f;
        }

        #chartdiv {
            position: relative;
            top: 40px;
            width: 100%;
            height: 500px;
        }

        #chartdiv1 {
            position: relative;
            top: 40px;
            width: 100%;
            height: 500px;
        }


        /*    /////////////////////////////////////////////////////////////*/

        .img-upload-card {
            background: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            box-shadow: rgba(0, 0, 0, 0.117647) 0px 1px 6px, rgba(0, 0, 0, 0.117647) 0px 1px 4px;
        }

        .file-upload-container {
            width: 100%;
            height: 50px;
            overflow: hidden;
            background: #3F51B5;
            user-select: none;
            transition: all 150ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
            text-align: center;
            color: white;
            line-height: 50px;
            font-weight: 300;
            font-size: 20px;
        }

        .file-upload-container:hover {
            cursor: pointer;
            background: #3949AB;
        }

    </style>

</head>

<body class="nav-md" style="cursor: pointer">
<div class="container body">
    <div class="main_container">


        <!-- Side header -->
        <jsp:include page="sideHeader.jsp"/>
        <!-- /Side header -->

        <!-- Top header -->
        <jsp:include page="topHeader.jsp"/>
        <!-- /Top header -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="page-title">
                <div class="title_left">
                    <h3>User Manage
                        <small>  Welcome To Hotel Sapphire Marriott</small>
                    </h3>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                            <a href="/manage">
                                <button type="button" class="large-btn btn btn-dark"><i class="fa fa-mail-reply">
                                    Back</i>
                                </button>
                            </a>

                        </div>
                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                            <a href="/notice">
                                <button type="button" class="large-btn btn btn-dark"><i class="fa fa-bookmark">
                                    +Notice</i>
                                </button>
                            </a>

                        </div>
                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                            <a href="/loadDepartment">
                                <button type="button" class="large-btn btn btn-dark"><i class="fa fa-bookmark">
                                    +Department</i>
                                </button>
                            </a>

                        </div>
                    </div>
                </div>

                <%--Time--%>
                <div class="title_right">

                    <script>

                        function formatTime() {
                            now = new Date();
                            hour = now.getHours();
                            min = now.getMinutes();
                            sec = now.getSeconds();

                            if (document.clock.sivamtime[0].checked) {
                                if (min <= 9) {
                                    min = "0" + min;
                                }
                                if (sec <= 9) {
                                    sec = "0" + sec;
                                }
                                if (hour > 12) {
                                    hour = hour - 12;
                                    add = " p.m.";
                                } else {
                                    hour = hour;
                                    add = " a.m.";
                                }
                                if (hour == 12) {
                                    add = " p.m.";
                                }
                                if (hour == 0) {
                                    hour = "12";
                                }

                                document.clock.sivam.value = ((hour <= 9) ? "0" + hour : hour) + ":" + min + ":" + sec + add;
                            }

                            if (document.clock.sivamtime[1].checked) {
                                if (min <= 9) {
                                    min = "0" + min;
                                }
                                if (sec <= 9) {
                                    sec = "0" + sec;
                                }
                                if (hour < 10) {
                                    hour = "0" + hour;
                                }
                                document.clock.sivam.value = hour + ':' + min + ':' + sec;
                            }

                            setTimeout("formatTime()", 1000);
                        }

                        window.onload = formatTime;

                    </script>
                    <form name="clock" style="float: right">
                        <table class="clock" width="135">
                            <tr>
                                <td class="clock2">
                                </td>
                            </tr>
                            <tr>
                                <h6 style="color:#73879C; float:right;border: none;background-color: #f6f6f6">
                                    <input style="color:#73879C; float:right;border: none;background-color: #f6f6f6"
                                           class="clock2" type="text" name="sivam" size="12"><br>
                                    <p><%=date%>
                                    </p>
                                </h6>

                            </tr>
                            <tr>
                                <td>
                                    <label class="clock3" for="1"><input type="radio" style="display: none" id="1"
                                                                         name="sivamtime" checked></label><br>
                                    <label class="clock3" for="2"><input type="radio" style="display: none" id="2"
                                                                         name="sivamtime"></label>
                                </td>
                            </tr>
                        </table>

                    </form>
                </div>
            </div>
            <%--/Time--%>

            <%--Input Feilds--%>
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="col-12 col-sm-12 col-md-12 col-lg-5 col-xl-5">

                    <form:form action="saveUser" method="post" modelAttribute="employeeDTO">

                        <div class="form-group">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>User Name</label>
                                <input type="text" class="form-control"
                                       required="required" name="name"
                                       id="userName" placeholder="User Name"/></div>

                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>Position</label>
                                <input type="text" class="form-control"
                                       required="required" name="position"
                                       id="position" placeholder="Position"/></div>
                            <input type="hidden" class="form-control"
                                   required="required" name="userId" value="0"
                                   id="userId" placeholder="User Id"/>
                        </div>
                        <%--                    ///////////////////////////////--%>

                        <div class="form-group">

                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>Salary</label>
                                <input type="number" class="form-control"
                                       required="required" name="salary"
                                       id="salary" placeholder="Salary"/></div>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>   Address</label>
                                <input type="text" class="form-control"
                                       required="required" name="address"
                                       id="address" placeholder="Address"/></div>
                        </div>
                        <%--/////////////////////////////////////////--%>
                        <div class="form-group">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>Password</label>
                                <input type="text" class="form-control"
                                       required="required" name="password"
                                       id="password" placeholder="Password"/></div>


                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>Email</label>
                                <input type="email" class="form-control"
                                       required="required" name="email"
                                       id="email" placeholder="Email"/></div>


                        </div>
                        <%--                    /////////////////////////////////////////////////--%>
                        <div class="form-group">

                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>Gender</label>
                                <select type="c" class="form-control"
                                        required="required" name="gender"
                                        id="gender" placeholder="Gender">
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>Mobile No</label>
                                <input type="text" class="form-control"
                                       required="required" name="mobileNo"
                                       id="mobileNo"
                                       placeholder="Mobile No"
                                       pattern="[0-9]{10}" oninvalid="setCustomValidity('Please enter a valid phone number!')"/></div>
                        </div>

                        <div class="form-group">

                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label for="setType">Department<span
                                        class="required">*</span>
                                </label>
                                <div>
                                    <select id="setType" class="form-control"
                                            style="width: 100%; border-color: lightgray"
                                            name="department">
                                        <c:forEach items="${loadDepartment}" var="category">
                                            <option value="${category.departmentId}"
                                                    <c:if test="${category.departmentId eq p2}">selected="selected"</c:if> >
                                                    ${category.departmentName}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>


                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>DateOfBirth</label>
                                <input type="date" class="form-control"
                                       required="required" name="dateOfBirth"
                                       id="dateOfBirth" placeholder="DateOfBirth"/></div>
                        </div>
                        <div class="form-group">


                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <label>Date</label>
                                <input type="date" class="form-control"
                                       required="required" name="date"
                                       id="date" placeholder="Date"/></div>
                            <br>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"><br>
                                <div class="col-md-5 col-lg-5 col-xl-5">

                                    <label for="img-preview">Image</label>
                                    <div class="img-upload-card ">
                                        <c:choose>
                                            <c:when test="${empty employeeDTO.image}">
                                                <img src="../../images/picture.jpg" id="img-preview"
                                                     style="width: 100%; height: 40px"/>
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${employeeDTO.image}" id="img-preview"
                                                     style="width: 100%;height: 40px"/>
                                            </c:otherwise>
                                        </c:choose>
                                        <label class="file-upload-container" for="file-upload"
                                               style="font-size: 13px; padding: -10px 5px 5px 5px; height: 30px;">
                                            <input id="file-upload" type="file" style="display:none;">
                                            Select
                                        </label>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <form:hidden id="imgUrl" path="image" value="../../images/picture.jpg"/>

                        <button type='submit' class="btn btn-dark" style="width: 50%; top: 10px; position: relative"
                                value="Register">
                            Submit
                        </button>
                        <button type='reset' class="btn btn-outline-success" style="top: 10px; position: relative"
                                value="">Reset
                        </button>

                    </form:form>
                </div>
                <%--/Input Feilds--%>
                <%--Table--%>
                <div class="col-12 col-sm-12 col-md-12 col-lg-7 col-xl-7">
                    <div class="row">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Find Users
                                    <small>User Page</small>
                                </h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                           aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Settings 1</a>
                                        </div>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card-box table-responsive">
                                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                                <thead class="thead-light">
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Name</th>
                                                    <th>Position</th>
                                                    <th>MobileNo</th>
                                                    <th>Pic</th>
                                                    <th>Salary</th>
                                                    <th>Address</th>
                                                    <th>Email</th>
                                                    <th>Password</th>
                                                    <th>Gender</th>
                                                    <th>Date</th>
                                                    <th>Birthday</th>
                                                    <th>Delete</th>
                                                </tr>

                                                </thead>
                                                <tbody>
                                                <c:forEach items="${loadAllUserTable}" var="e">
                                                    <tr>
                                                        <td>${e.userId}</td>
                                                        <td>${e.name}</td>
                                                        <td>${e.position}</td>
                                                        <td>${e.mobileNo}</td>
                                                        <td><img src="${e.image}"
                                                                 class="avatar" alt="Avatar"></td>
                                                        <td>${e.salary}</td>
                                                        <td>${e.address}</td>
                                                        <td>${e.email}</td>
                                                        <td>${e.password}</td>
                                                        <td>${e.gender}</td>
                                                        <td>${e.date}</td>
                                                        <td>${e.dateOfBirth}</td>
                                                        <td>
                                                            <a href="deleteEmployee/${e.userId}"<%--onclick="return confirm('Are you sure you want to delete?')"--%>
                                                               class="btn btn-xs">
                                                                <i class="fa fa-trash-o"></i></a></td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--Table--%>
            </div>
            <%--///////////////////////////////////////////////////////////////////////////////////////////////////////////--%>


            <%--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>


        </div>
    </div>
    <!-- /page content -->

    <!-- footer content -->
    <jsp:include page="footer.jsp"/>
    <!-- /footer content -->
</div>
</div>


<!-- jQuery -->
<script src="../../vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Datatables -->
<script src="../../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<%--Show Print Buttons--%>
<script src="../../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="../../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="../../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="../../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="../../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="../../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<%--Responsive Table--%>
<script src="../../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<%--<script src="../../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>--%>
<%--Print--%>
<script src="../../vendors/jszip/dist/jszip.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="../../build/js/custom.min.js"></script>




<%--</script>--%>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>

    var imageEmployee;
    var selectedRow = null;
    $("#datatable-buttons tbody").on('click', 'tr', function () {
        selectedRow = $(this);
        $("#userId").val($(this).find("td:nth-child(1)").text());
        $("#userName").val($(this).find("td:nth-child(2)").text());
        $("#position").val($(this).find("td:nth-child(3)").text());
        $("#mobileNo").val($(this).find("td:nth-child(4)").text());
        $("#pic").val($(this).find("td:nth-child(5)").text());
        $("#salary").val($(this).find("td:nth-child(6)").text());
        $("#address").val($(this).find("td:nth-child(7)").text());
        $("#email").val($(this).find("td:nth-child(8)").text());
        $("#password").val($(this).find("td:nth-child(9)").text());
        $("#gender").val($(this).find("td:nth-child(10)").text());
        $("#date").val($(this).find("td:nth-child(11)").text());
        $("#dateOfBirth").val($(this).find("td:nth-child(12)").text());
    });


    let imgPreview = document.getElementById('img-preview');
    let fileUpload = document.getElementById('file-upload');
    let imgUrl = document.getElementById("imgUrl");
    let CLOUDINARY_API_URL = 'https://api.cloudinary.com/v1_1/dwdv5hhga/upload';
    let CLOUDINARY_UPLOAD_PRESET = 'sqdn7zkx';

    fileUpload.addEventListener('change', function (event) {

        let file = event.target.files[0];

        let formData = new FormData();

        formData.append('file', file);

        console.log("form-data", file);

        formData.append('upload_preset', CLOUDINARY_UPLOAD_PRESET);

        axios({
            url: CLOUDINARY_API_URL, method: 'POST', headers: {

                'Content-Type': 'application/x-www-form-urlencoded'
            }, data:

            formData
        }).then(function (res) {
            imgPreview.src = res.data.secure_url;
            imgUrl.value = res.data.secure_url;
        }).catch(function (err) {

            console.error(err);
        });


    });

</script>
<%--sqdn7zkx--%>
<%--https://api.cloudinary.com/v1_1/dwdv5hhga--%>

</body>
</html>