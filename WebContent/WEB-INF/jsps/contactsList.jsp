<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:43:42 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Empty Page</title>

    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/font-awesome/css/font-awesome.css" rel="stylesheet">


    <!-- FooTable -->
    <link href="resources/css/plugins/footable/footable.core.css" rel="stylesheet">
    
    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">

</head>

<body class="">

<div id="wrapper">

    		<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav metismenu" id="side-menu">
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span> <img alt="image" class="img-circle"
								src="resources/img/profile_small.jpg" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle"
								href="resources/#"> <span class="clear"> <span
									class="block m-t-xs"> <strong class="font-bold">${realName }</strong>
								</span> <span class="text-muted text-xs block"> <c:forEach
											items="${roles}" var="entry">
											<c:out value="${entry}" />
										</c:forEach> <c:forEach items="${directions}" var="direction">
											<c:out value="${direction}" />
										</c:forEach> <b class="caret"></b>
								</span>
							</span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="resources/profile.html">Profile</a></li>
								<li><a href="resources/contacts.html">Contacts</a></li>
								<li><a href="resources/mailbox.html">Mailbox</a></li>
								<li class="divider"></li>
								<li><a href="login.html">Logout</a></li>
							</ul>
						</div>
						<div class="logo-element">IN+</div>
					</li>

					<li><a href="dashboard.html"><i class="fa fa-diamond"></i>
							<span class="nav-label">Dashboards</span></a></li>
					<li><a href="#"><i class="fa fa-envelope"></i> <span
							class="nav-label">Courriers</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a
								href="${pageContext.request.contextPath}/CourriersArrivées">Courriers
									Arrivées</a></li>
							<li><a href="${pageContext.request.contextPath}/CourriersSorties">Courriers Sorties</a></li>
							<li><a href="${pageContext.request.contextPath}/CourriersInternes">Courriers Internes</a></li>

						</ul></li>
					<li><a href="#"><i class="fa fa-user"></i> <span
							class="nav-label">Contactes</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a
								href="${pageContext.request.contextPath}/createContact"><i
									class="fa fa-plus"></i>Créer Contacte</a></li>
							<li><a
								href="${pageContext.request.contextPath}/createCompany"><i
									class="fa fa-plus"></i>Créer société</a></li>
							<li><a
								href="${pageContext.request.contextPath}/afficherContacts"><i
									class="fa fa-list"></i></i>Liste Contacte</a></li>

						</ul></li>

					<li><a href="${pageContext.request.contextPath}/stats"><i
							class="fa fa-bar-chart-o"></i></i> <span class="nav-label">Statistique
						</span></a></li>
			</div>
		</nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					
					<ul class="nav navbar-top-links navbar-right">
						<li><span class="m-r-sm text-muted welcome-message">Welcome
								${pageContext.request.userPrincipal.name}</span></li>
						<li class="dropdown"><a class="dropdown-toggle count-info"
							data-toggle="dropdown" href="resources/#"> <i
								class="fa fa-envelope"></i> <span class="label label-warning">16</span>
						</a>
							<ul class="dropdown-menu dropdown-messages">
								<li>
									<div class="dropdown-messages-box">
										<a href="resources/profile.html" class="pull-left"> <img
											alt="image" class="img-circle" src="../img/a7.jpg">
										</a>
										<div class="media-body">
											<small class="pull-right">46h ago</small> <strong>Mike
												Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
											<small class="text-muted">3 days ago at 7:58 pm -
												10.06.2014</small>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="dropdown-messages-box">
										<a href="resources/profile.html" class="pull-left"> <img
											alt="image" class="img-circle" src="../img/a4.jpg">
										</a>
										<div class="media-body ">
											<small class="pull-right text-navy">5h ago</small> <strong>Chris
												Johnatan Overtunk</strong> started following <strong>Monica
												Smith</strong>. <br> <small class="text-muted">Yesterday
												1:21 pm - 11.06.2014</small>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="dropdown-messages-box">
										<a href="resources/profile.html" class="pull-left"> <img
											alt="image" class="img-circle" src="../img/profile.jpg">
										</a>
										<div class="media-body ">
											<small class="pull-right">23h ago</small> <strong>Monica
												Smith</strong> love <strong>Kim Smith</strong>. <br> <small
												class="text-muted">2 days ago at 2:30 am -
												11.06.2014</small>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
										<a href="resources/mailbox.html"> <i
											class="fa fa-envelope"></i> <strong>Read All
												Messages</strong>
										</a>
									</div>
								</li>
							</ul></li>
						


						<li><a href="${pageContext.request.contextPath}/logout">
								<i class="fa fa-sign-out"></i> Log out
						</a></li>
					</ul>
				</nav>
			</div>
        



        <div class="ibox-content">
            <span class="text-muted small pull-right">Last modification: <i class="fa fa-clock-o"></i> 2:10 pm - 12.06.2014</span>
            <h2>Clients</h2>
            <p>
                All clients need to be verified before you can send email and set a project.
            </p>
            
            <div class="input-group">
            
               <input type="text" class="form-control input-sm m-b-xs"
									id="filter" placeholder="Search in table">
                
            </div>
            <div class="clients-list">
                <ul class="nav nav-tabs">
                    <span class="pull-right small text-muted">1406 Elements</span>
                    <li class="active"><a data-toggle="tab" href="resources/#tab-1"><i class="fa fa-user"></i> Contacts</a></li>
                    <li class=""><a data-toggle="tab" href="resources/#tab-2"><i class="fa fa-briefcase"></i> Companies</a></li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane active">
                        <div class="full-height-scroll">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover footable" data-filter=#filter data-filter-control="true">
                                    <tbody>
                                    <c:forEach items="${allContacts}" var="map">
                                    
                                    <tr>
                                        <td class="client-avatar"><img alt="image" src="resources/img/a2.jpg"> </td>
                                        <td><a data-toggle="tab" href="resources/#contact-1" class="client-link"><c:out value="${map['nom']}" /></a></td>
                                        <td> <c:out value="${map['Société']}" /></td>
                                        <td> <c:out value="${map['mail']}" /></td>
                                        <td> <c:out value="${map['téléphone']}" /></td>
              		                    <td> <c:out value="${map['adresse']}" /></td>
                                        
                                        <td><a type="button" data-toggle="modal" class="btn btn-primary btn-xs"  href="resources/#modal-form1">Edit</a></td>

                                        <div id="modal-form1" class="modal fade" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="row">


                                                            <p>Update Contact</p>

                                                            <form role="form" method="POST" class="form-horizontal" action="updateContact">
                                                                <div class="form-group"><label>Nom</label> <input type="text" placeholder="Nom" class="form-control" name="nomContact"></div>
                                                                <div class="form-group"><label>Email</label> <input type="email" placeholder="Enter email" class="form-control" name="emailContact"></div>
                                                                <div class="form-group"><label>Téléphone</label> <input type="text" placeholder="Téléphone" class="form-control" name="telephoneContact"></div>
                                                                <div class="form-group"><label>Adresse</label> <input type="text" placeholder="Adresse" class="form-control" name="adresseContact"></div>
                                                                <div class="form-group"><label>Société</label>

                                                                    <select class="select2_demo_1 form-control" name="idSociete">
                                                                    <c:forEach items="${allCompanies}" var="map">
                                                                    <option value="<c:out value="${map['idSociété']}" />"><c:out value="${map['nom']}" /></option>

                                                                    </c:forEach>
                                                                        

                                                                    </select>
                                                                </div>

                                                                <div>
                                                                    <input type="hidden" id="myField3" name="idContactUpdate"/>
                                                                
                                                                    <button type="button" class="btn  btn-white "><strong>Default</strong></button>
                                                                    <button class="btn  btn-primary" type="submit"><strong>Edit</strong></button>
                                                                </div>

                                                            </form>

                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                        <td class="client-status">  <a type="button"  data-toggle="modal" class="btn btn-primary btn-xs btn-danger" href="resources/#modal-form-delete">Delete</a></td>
                                        <div id="modal-form-delete" class="modal fade" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="row">


                                                            <p>This will be deleted,are you sure? </p>

                                                            <form role="form" method="POST" class="form-horizontal" action="deleteContact">
                                                            

                                                                <div>
                                                                <input type="hidden" id="myField" name="idContact"/>
                                                                    <button type="button" class="btn  btn-white "><strong>Cancel</strong></button>
                                                                    <button class="btn  btn-primary btn-danger" type="submit"><strong>Delete</strong></button>
                                                                </div>

                                                            </form>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
								</c:forEach>



                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane">
                        <div class="full-height-scroll">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover footable" data-filter=#filter data-filter-control="true">
                                    <tbody>
                                    <c:forEach items="${allCompanies}" var="map">
                                    <tr>
                                        <td><a data-toggle="tab" href="resources/#company-1" class="client-link"><c:out value="${map['nom']}" /></a></td>
                                        <td> <c:out value="${map['adresse']}" /></td>
                                        <td> <c:out value="${map['téléphone']}" /></td>
                                        <td> <c:out value="${map['email']}" /></td>
              		                    


                                        <td> <a type="button" data-toggle="modal" class="btn btn-primary btn-xs"  href="resources/#modal-form-Company">Edit</a></td>
                                        <div id="modal-form-Company" class="modal fade" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="row">


                                                            <p>Update Company</p>

                                                            <form role="form" method="POST" class="form-horizontal" action="updateCompany">
                                                                <div class="form-group"><label>Nom</label> <input type="text" placeholder="Nom" class="form-control" name="nomCompany" id="nomCompany" ></div>
                                                                <div class="form-group"><label>Email</label> <input type="email" placeholder="Enter email" class="form-control" name="emailCompany" ></div>
                                                                <div class="form-group"><label>Téléphone</label> <input type="text" placeholder="Téléphone" class="form-control" name="telephoneCompany" ></div>
                                                                <div class="form-group"><label>Adresse</label> <input type="text" placeholder="Adresse" class="form-control" name="adresseCompany" ></div>
                                                                <div>

																	<input type="hidden" id="myField4" name="idCompanyUpdate"/>
                                                                    <button type="button" class="btn  btn-white "><strong>Annuler</strong></button>
                                                                    <button class="btn  btn-primary" type="submit"><strong>Edit</strong></button>
                                                                </div>

                                                            </form>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <td class="client-status">  <a type="button"  data-toggle="modal" class="btn btn-primary btn-xs btn-danger" href="resources/#modal-form-delete2">Delete</a></td>
                                        <div id="modal-form-delete2" class="modal fade" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="row">


                                                            <p>This will be deleted,are you sure? </p>

                                                            <form role="form" method="POST" class="form-horizontal" action="deleteCompany">
                                                            

                                                                <div>
                                                                <input type="hidden" id="myField2" name="idSociete"/>
                                                                    <button type="button" class="btn  btn-white "><strong>Cancel</strong></button>
                                                                    <button class="btn  btn-primary btn-danger" type="submit"><strong>Delete</strong></button>
                                                                </div>

                                                            </form>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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





        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2015 
            </div>
        </div>

    </div>
</div>

<!-- Mainly scripts -->
<script src="resources/js/jquery-2.1.1.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- FooTable -->
    <script src="resources/js/plugins/footable/footable.all.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="resources/js/inspinia.js"></script>
<script src="resources/js/plugins/pace/pace.min.js"></script>
<script type="text/javascript">
var row_index ;		

$('td').click(function(){
	   row_index = $(this).parent('tr').index();
	   display();
	});
function display() {
	   $("#myField").val(row_index);
	   $("#myField2").val(row_index);
	   $("#myField3").val(row_index);
	   $("#myField4").val(row_index);

}
</script>
		
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            $('.footable2').footable();

        });

    </script>
</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:43:42 GMT -->
</html>
