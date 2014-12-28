<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<r:layoutResources/>
	<head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		    <meta name="description" content="IDeaS Rock Star"/>
		    <meta name="author" content="IDeaSLabs"/>
		    <meta http-equiv="refresh" content="900">
		    <title>IDeaS Rock Star</title>
			<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>

		    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet" type="text/css"/>
		    <link href="${resource(dir: 'css', file: 'bootstrap-theme.css')}" rel="stylesheet" type="text/css"/>


		    <link href="${resource(dir: 'assets/fullcalendar/fullcalendar', file: 'bootstrap-fullcalendar.css')}" rel="stylesheet" type="text/css"/>
		    <link href="${resource(dir: 'assets/jquery-easy-pie-chart', file: 'jquery.easy-pie-chart.css')}" rel="stylesheet" type="text/css" media="screen"/>
		    <link rel="stylesheet" href="${resource(dir: 'css', file: 'owl.carousel.css')}" type="text/css">
		    <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet" type="text/css"/>
		    <link href="${resource(dir: 'css', file: 'style-responsive.css')}" rel="stylesheet" type="text/css"/>


            <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
            <!--[if lt IE 9]>
              <script src="js/html5shiv.js"></script>
              <script src="js/respond.min.js"></script>
              <script src="js/lte-ie7.js"></script>
            <![endif]-->

	</head>
	<r:layoutResources/>
	<body>
        
          
	  <section id="container" class="">
	      <!--header start-->

      <header class="header white-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>

            <!--logo start-->
            <g:link controller="index" class="logo">IDeaS Rock Stars</g:link>
            <g:link controller="badges.html" class="badge bg-important">Levels</g:link>
            
            <!--logo end-->
 
            
      </header>      
      <!--header end-->
      <!--main content start-->
<!--container starts-->
<div class="container">
<!--right side content starts-->
<div id="fluid" class="col-lg-10">

	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  		<g:each status="i" var="userBadge" in="${request?.userBadges}">
		  <div class="panel panel-default">
		    <div class="panel-heading" role="tab" id="heading${userBadge.badge.id}">
		      <h4 class="panel-title">
		        <g:if test="${i == 0}">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapse${userBadge.badge.id}" aria-expanded="true" aria-controls="collapse${userBadge.badge.id}">
			</g:if>
			<g:else>
				<a data-toggle="collapse" data-parent="#accordion" href="#collapse${userBadge.badge.id}" aria-expanded="false" aria-controls="collapse${userBadge.badge.id}">
			</g:else>
			  	<span class="fa-stack fa-lg" title="${userBadge.badge.badgeName}">
				<i class="fa fa-circle fa-stack-2x" style="color: ${userBadge.getLevelColor()};"></i>
				<g:if test="${userBadge.badge.isEvil}">
					<i class="fa ${userBadge.badge.badgeIcon} fa-stack-1x" style="color:#000000;"></i>
				</g:if>	
			        <g:else>
					<i class="fa ${userBadge.badge.badgeIcon} fa-stack-1x" style="color:#FFFFFF"></i>
			     	</g:else>	
			  </span>
			  		${userBadge.badge.badgeName}
			</a>
		      </h4>
		    </div>
		    <g:if test="${i == 0}">
		    	<div id="collapse${userBadge.badge.id}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading${userBadge.badge.id}">
		    </g:if>
		    <g:else>
		    	<div id="collapse${userBadge.badge.id}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading${userBadge.badge.id}">
		    </g:else>
			<!--panel body starts-->
			<div class="panel-body" style="text-align:center;">
			  <div id="content1${userBadge.badge.id}" style="width:300px; text-align:center; float:left; padding:10px;">
				<div style="background: #ED943C; padding: 15px;">
				    <h4 style="color:#fff">${request.userCompetitorBadges.get(i).user.getName()}</h4>
				    <div>
					
					<g:link controller="user" action="view" id="${request.userCompetitorBadges.get(i)?.user.id}" ><img src="${request.userCompetitorBadges.get(i)?.user.getUserImage()}" alt="" onError="this.src='${session?.userInfo?.getNoImage()}';" width="75px" height="75px;" ></g:link>
				    </div>
				    
				    <h6 style="color:#fff">${request.userCompetitorBadges.get(i).user?.title}</h6>
				    <p style="font-size: 25px;font-weight: bolder;color: #fff;">${request.userCompetitorBadges.get(i).points} <i style="padding-left:10px; color:blue;" class="icon_star"></i>

				    </p>
				</div>
			  </div>

			  <div id="content2${userBadge.badge.id}" style="width:300px; text-align:center;float:left;padding:10px;">
				<div style="background: #B5A63F; padding: 15px;">
				    <h4 style="color:#fff">${session?.userInfo?.getName()}</h4>
				    <div>					
					<a href="user/view/${session?.userInfo?.id}" ><img src="${session?.userInfo?.getUserImage()}" alt="" onError="this.src='${session?.userInfo?.getNoImage()}';" width="75px" height="75px;" ></a>
				    </div>
				    <h6 style="color:#fff">${session?.userInfo?.title}</h6>
				    <p style="font-size: 25px;font-weight: bolder;color: #fff;">${userBadge.points} <i style="padding-left:10px; color:blue;" class="icon_star"></i>

				    </p>
				</div>
			 </div>
			 <div id="content3${userBadge.badge.id}" style="width:300px; text-align:center;float:left;padding:10px;">
				<div style="background: currentcolor; padding: 15px;">
				    <h4 style="color:#fff">${request.userFollowerBadges.get(i).user.getName()}</h4>
				    <div>
					
					<g:link controller="user" action="view" id="${request.userFollowerBadges.get(i)?.user.id}" ><img src="${request.userFollowerBadges.get(i)?.user.getUserImage()}" alt="" onError="this.src='${session?.userInfo?.getNoImage()}';" width="75px" height="75px;" ></g:link>
				    </div>
				    
				    <h6 style="color:#fff">${request.userFollowerBadges.get(i).user?.title}</h6>
				    <p style="font-size: 25px;font-weight: bolder;color: #fff;">${request.userFollowerBadges.get(i).points} <i style="padding-left:10px; color:blue;" class="icon_star"></i>

				    </p>
				</div>
			 </div>
		     </div>
		   </div>
		   <!--panel body ends-->
		  </div>  
 		</g:each>
 		</div>
</div>
</div>	
      <!--main content end-->
                <div id="fixed">
                  <section class="panel">
                      <div class="profile-widget profile-widget-info">
                          <div class="panel-body">
                            <div class="col-lg-4 col-sm-4 profile-widget-name">
                              <h4>${session?.userInfo?.getName()}</h4>               
                              <div class="follow-ava">
                                  <a href="user/view/${session?.userInfo?.id}" ><img src="${session?.userInfo?.getUserImage()}" alt="" onError="this.src='${session?.userInfo?.getNoImage()}';"></a>
                                  
                              </div>
                              <h6>${session?.userInfo?.getTitle()}</h6>
                            </div>
                            <div class="col-lg-8 col-sm-8 follow-info">
                                <p style="font-size: 50px;font-weight: bolder;color: #222;">${session?.userInfo?.getTrophies()} <i style="padding-left:10px; color:blue" class="fa fa-star"></i>
                              <p>
                              </p>
                             </div>
                          </div>
                                  <g:each status="i" var="userBadge" in="${request?.userBadges}">
                                     
                                          <span class="fa-stack fa-lg" title="${userBadge.badge.badgeName}">
						<i class="fa fa-circle fa-stack-2x" style="color: ${userBadge.getLevelColor()};"></i>
				             	<g:if test="${userBadge.badge.isEvil}">
                                             		<i class="fa ${userBadge.badge.badgeIcon} fa-stack-1x" style="color:#000000;"></i>
                                          	</g:if>	
						     <g:else>
							<i class="fa ${userBadge.badge.badgeIcon} fa-stack-1x" style="color:#FFFFFF"></i>
						     </g:else>	
                                          </span>
			
                                     
                                     
                                 </g:each>
			   			 <footer class="profile-widget-foot">
			   			 Appreciate someone today!
			   			 <button class="btn btn-default" data-toggle="modal" data-target="#myModal" ><i style="font-size:150%" class="fa fa-thumbs-up"></i></button>
			   			 <g:if test="${session.userInfo.isEligibleToGrantMoreOrLessThanOneStars()}">
			   			 <button  title="Create Mission" class="btn btn-default" data-toggle="modal" data-target="#missionModal" ><i style="font-size:150%" class="fa fa-bullseye"></i></button>
                         </g:if>


                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                            	<g:form id="updateTrophies" name="updateTrophies" controller="trophy" action="update">
	                              <div class="modal-dialog">
	                                <div class="modal-content">
	                                  <div class="modal-header">
	                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	                                    <h4 class="modal-title" id="myModalLabel">Appreciate</h4>
	                                  </div>
	                                  <div class="modal-body" id="myBody" placeholder="Type @ for auto complete">
                                        Whom do you want to Appreciate?
                                        <input type="text" class="form-control" placeholder="Type in the email address..." name="toUserEmailID" id="toUserEmailID"/>
	                                    <textarea class="form-control" rows="7" placeholder="Type in your reason..." name="reason" id="reason"></textarea>
	                                    <g:if test="${session.userInfo.isEligibleToGrantMoreOrLessThanOneStars()}">
                                             <input type="text" class="form-control" placeholder="Type in no of stars..." name="trohpies" id="trohpies" value="1"/>
                                        </g:if>
                                        <g:else>
                                             <input type="hidden" class="form-control" placeholder="Type in no of stars..." name="trohpies" id="trohpies" value="1"/>
                                        </g:else>
                                        <g:select id="badgeId" name="badgeId"
                                                  noSelection="${['-1':'Select One Category...']}"
                                                  from="${session.badges}"
                                                  optionValue="badgeName"
                                                  optionKey="id" />
	                                  </div>
	                                  <div class="modal-footer">
	                                    <button type="button" class="btn btn-default" data-dismiss="modal">Changed my mind</button>
	                                    <g:submitButton name="update" class="btn btn-primary" value="Send Appreciation" onclick="return isValidInput();"/>

	                                  </div>
	                                </div>
	                              </div>
                              </g:form>
                            </div>


                            <div class="modal fade" id="missionModal" tabindex="-1" role="dialog" aria-labelledby="missionModal" aria-hidden="false">
                            	<g:form id="createMission" name="createMission" controller="mission" action="create">
	                              <div class="modal-dialog">
	                                <div class="modal-content">
	                                  <div class="modal-header">
	                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	                                    <h4 class="modal-title" id="myModalLabel">Create a new Mission!</h4>
	                                  </div>
	                                  <div class="modal-body" id="myBody" placeholder="Type @ for auto complete">
	                                    <textarea class="form-control" rows="7" placeholder="Enter the mission description here?" name="missionStatement" id="missionStatement"></textarea>

                                        <input type="text" class="form-control" placeholder="Type in the number of Stars on offer..." name="trohpies" id="trohpies" />

	                                  </div>
	                                  <div class="modal-footer">
	                                    <button type="button" class="btn btn-default" data-dismiss="modal">Changed my mind</button>
	                                    <g:submitButton name="update" class="btn btn-primary" value="Create Mission" onclick="return isValidMissionInput();"/>

	                                  </div>
	                                </div>
	                              </div>
                              </g:form>
                            </div>
                              <!--end modal-->

                          </footer>
                      </div>
                  </section>

              <div class="row">
                  <div class="col-lg-4">
                      <!--project team start-->
                      <section class="panel">
                            
                            
                        <table class="table table-hover personal-task">

                              <tbody>
                                    <g:each  var="user" in="${request?.departmentMap?.keySet()}">
                                        <tr>

                                          <td style="width:10px;">
                                            <span title="${user.getName()}">
                                            <g:link controller="user" action="view" id="${user.id}" ><img alt="" class="simple" src="${user.getUserImage()}" onError="this.src='${session?.userInfo?.getNoImage()}';" height="40"></g:link>
                                            <span class="badge bg-important" style="position: relative;left: 30px;top: -15px;background: #FF4F2D;">${user.getUserBadge()}</span>
                                            </span>
                                            <!--p class="profile-name"><h6>${user.getName()}</h6></p-->

                                          </td>

                                          <td>
                                              <span class="badge bg-info" style="font-size:150%">${request?.departmentMap?.get(user)}</span>
                                          </td>
                                          <td>
                                                 <i style="padding-left:0px; color:blue; font-size:150%" class="fa fa-star"></i>
                                          </td>
                                          <td >
                                                 <g:if test="${!user.getEmail().equals(session?.userInfo?.getEmail())}">
                                                     <button class="btn btn-default" data-toggle="modal" data-target="#myModal" onclick="setEmail('${user.getEmail()}')"><i style="font-size:150%" class="fa fa-thumbs-up"></i></button>
                                                </g:if>

                                          </td>
                                          </tr>
                              </g:each>

                              </tbody>
                          </table>
                      </section>
                      <!--Project Team end-->
                  </div>

                  </div>  
  </section>
  <!-- container section start -->

      <!-- javascripts -->
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="../js/bootstrap.min.js"></script>


    
  <script>
    function isValidMissionInput(){

            var missionStatement =document.getElementById("missionStatement").value;


            if(missionStatement.trim().length < 1) {
                alert("Mission Statement is mandatory.")
                return false;
            }
            if(!isNumber(document.getElementById("trohpies").value)) {
                window.alert("Number of Stars on Offer should be a valid positive number.")
                return false;
            }

            document.getElementById("createMission").submit();
    }

    function isValidInput(){

        var emailIDContent =document.getElementById("toUserEmailID").value;
        var reason =document.getElementById("reason").value;

        var badgeId =document.getElementById("badgeId").value;


        if(emailIDContent.trim().length < 1) {
            alert("EmailID is mandatory.")
            return false;
        }
        if(reason.trim().length < 1) {
            alert("Reason is mandatory.")
            return false;
        }
        if(!isNumber(document.getElementById("trohpies").value)) {
            window.alert("Number of Stars should be a valid number.")
            return false;
        }
        if(badgeId == -1){
            alert("Badge is mandatory.")
            return false;
        }

        document.getElementById("updateTrophies").submit();

    }

    function isNumber(n) {
          return !isNaN(parseFloat(n)) && isFinite(n);
    }

	function setEmail(email)
	{
		document.getElementById("toUserEmailID").value=email;
	}
	
      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });


  </script>

  </body>
</html>
