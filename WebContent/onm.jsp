
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/one.style.css">
	<link rel="stylesheet" href="assets/dist/dragula.css" type="text/css">
	<link rel="shortcut icon" href="favicon.ico">
	
	
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">    <%-- css --%>
	
	
	<link rel='stylesheet' href='calendar/jquery-ui.min.css' />
   	<link href="calendar/fullcalendar.css" rel="stylesheet" />
   	<link href="calendar/fullcalendar.print.css" rel='stylesheet' media='print' />
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
   	
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="calendar/moment.min.js"></script>
	<script src="calendar/fullcalendar.min.js"></script>
	
	<script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
	<script type="text/javascript" src="http://www.pureexample.com/js/lib/jquery.ui.touch-punch.min.js"></script>
	
	<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=a41bbfd5db3d2e44b63d4711d5c8d15f"></script>  <!-- �������� -->
	
 	
  

    <style type="text/css">
body{
	font-family:'Malgun Gothic';
}
.bar {
    width: 100px;
    height: 20px;
    margin: 2px;
    border: 1px solid black;
    background-color: lightgreen;
    text-align: center;
    float: left;
    margin: 2px;
    padding: 2px;
    cursor: pointer;
    border-radius: 3px;
}
 
.list {
    background-color: #FFFFFF; 
    border: 1px solid;
    border-radius: 2em;
    margin: 5px;
    padding : 5px;
    font-size: 20px;
    word-break:break-all;
    

}
 
.items .ui-selected {
    background: red;
    color: white;
    font-weight: bold;
}
 
.items {
    list-style-type: none;
 	margin:0;
 	padding: 10px;
 
    
}
 
.items li {
    margin: 2px;
    padding: 2px;
    cursor: pointer;
    border-radius: 3px;
}
 
.weekday {

    width: 300px;
    padding: 5px;
    border: 1px solid green;
    border-radius: 0.75em;	
    background-color: #65BD13;

    margin: 5px;
    
    /* max-height : 700px; */   
}
 
.availablelist {
    background-color: orange;
    display: inline;
}
    
    #draggablePanelList .panel-heading {
        cursor: move;
    } 
   #calendar_attr {
  
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar_container {
		position:relative;
		top:700px;
		max-width: 700px;
		margin: 0 auto;
	}
	
    #sist{
    	/* width:4500px; */
    	height: 700px;
    		
    }
    #cardList{
    }

    .listHeader{
    	margin: 2px;
    	font: bold;
    	font-size: 25px;
    	
    }

   .footText{
    	width:280px;
    }
    .footInput{
  		width : 280px; 
  		text-align : center;
  		margin : 5px;
  		height: 50px;
    } 
    .footInput textarea{
    	width:280px;
    }
    .cardInsert{
    	margin-left: 100px;
    }
    .listHeader{
    	margin:5px;
    	height: 20px;
    }
    .listHeader p{
    	color :white;
    	font-size:20px;
    	margin: 5px;
    }
    #calendar{

    }
	#cardDetail .modal-dialog {
		width:75%
	}

.fc-time{
   display : none;
}
#fileUpButton {
	margin-bottom: 10px;
}
#blah {
	width:110px;
	height:80px;
	text-align: center;
	}
.addListBtn {
    background-color: transparent;
    color: white;
    display: block;
    height: 100%;
    line-height: 40px;
    text-decoration: none;
    width: 100%;
    text-align: center;
    cursor:pointer;
}
.addListTxt{
	background-color: transparent;
    color: white;
    display: block;
    height: 40px;
    line-height: 40px;
    text-decoration: none;
    width: 100%;
    text-align: center;
    border:inherit;
}
	
	
    </style>
   
<script type="text/javascript">


$(document).ready(function(){
	var labelColor=null;
	
	$('#calendar').fullCalendar({
		theme: true,
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		defaultDate: '2016-04-02',
		selectable: true,
		selectHelper: true,
		eventDurationEditable: false,   // �̺�Ʈ resize disable

/* 		select: function(start, end) {
			
			var eventData;
			if (title) {
				eventData = {
					title: title,
					start: start,
					end: end
				};
				
			}
			$('#calendar').fullCalendar('unselect');
		}, */ //�̺�Ʈ �߰��Լ�
		editable: true,
		eventClick: function(event) {
			$('#cardDetail').modal();
		
	  	   /*�̺�Ʈ Ŭ���� �߻��ϴ� �Լ�  alert("�̺�Ʈ Ŭ���� �߻��ϴ� �Լ�");*/
	  	   
	  	},
		eventLimit: true, // allow "more" link when too many events
		events: [
	
		
		]
	});
	
	
	
		$(this).on("click",".list",function(){
			$('#cardDetail').modal();
		});
		/* $("td").sortable({
			connectWith:".fc-day"
		}); */
		/* $("td").draggable({
			helper:"clone",
			connectToSortable: ".items"
		}); */
  	    $("#timetable .items").sortable({
  	            connectWith: "ul"        
  	    });
  	    $("ul[id^='available']").draggable({
/*   	        helper: "clone",
  	        connectToSortable: "td", */
  	        	revert: true,      // immediately snap back to original position
  	          revertDuration: 0
  	    });
  	    $(this).on("click",".footText",function(){
  			$(this).css('display', 'none');
  			$(this).siblings(".footInput").css('display', 'inline'); 
  		});
  	    $(this).on("click",".cardInsert",function(){
  	    	var text = $(this).siblings('textarea').val();
  			$(this).siblings('textarea').val("")
  			
  			$(this).parents(".listFoot").siblings('.items').append("<li class='list'>"+text+"</li>");
  			$(this).parent(".footInput").css('display', 'none');
  			$(this).parent(".footInput").siblings('.footText').css('display', 'inline'); 
  		});
  	    $(this).on("click",".addListBtn",function(){
  	    	/*  var listTitle =""; */
  	    	$(this).css('display','none');
  	    	$(this).siblings('.addListPanel').show();
  	    	$(this).siblings('.addListPanel').find('.addListTxt').focus();
  	    	
  		});
  	    
  	  /* addListPanelCreation addListPanelCancel */
  	    $(this).on("click",".listTitleCancel",function(){
  	    	$(this).parent('.addListPanel').hide();
  	    	$(this).parent('.addListPanel').siblings('.addListBtn').show();
  	    	$(this).siblings('.addListTxt').val("");
  	    	
  	    });
  	  $(this).on("click",".listTitleBtn",function(){
  		  
  	    	var listTitle ="";
  	    
  	    	listTitle= $(this).siblings('.addListTxt').val();
  	    	$(this).parent('.addListPanel').parent('.weekday').hide();
  	  	$('#timetable').append("<div class='weekday col-md-1'><div class='listHeader'><p>"+listTitle+
					"<button type='button' class='btn btn-sm btn-default listDelete' style='float:right'> "+
					"<span class='glyphicon glyphicon-trash'></span></p>"+
    			"</div><ul class='items'></ul><div class = 'listFoot'> "+
					"<button class='btn-primary footText'>���� �߰��ϱ�</button><div class='footInput' style='display:none;'> "+
					" <textarea cols='30' rows='3'></textarea><input type='button' value='�߰�' class='cardInsert btn-primary'/>  "+
	 				" <input type='button' value='���' class='cardCancel btn-primary'/> </div></div></div> ");
  	  	
  	  	$('#timetable').append("<div class='weekday col-md-1'><div class='addListBtn'><span>����Ʈ �߰��ϱ�..</span></div> "+
  	  				"<div class='addListPanel' style='display:none;'><input name='name' class='addListTxt' type='text' placeholder='����Ʈ �߰��ϱ�..'/> "+
  	  				"<input type='button' value='�߰�' class='listTitleBtn'/> "+
  	  				"<input type='button' value='���' class='listTitleCancel'/></div><div>");

  	  	
  	  	/*
  	  			<div class="weekday col-md-1">
	    		
	    			
	    			<div id="addListBtn">
	    				<span>����Ʈ �߰��ϱ�..</span>
	    			</div>
	    			
	    			<div class="addListPanel" style="display:none;">
	    				<input name="name" class="addListTxt" type="text" placeholder="����Ʈ �߰��ϱ�.."/>
	    				<input type="button" value="�߰�" class="listTitleBtn" />
	    				<input type="button" value="���" class="listTitleCancel" />
	    			</div>
	    		</div>
  	  	*/
  	  	
			 $("#timetable .items").sortable({
	            connectWith: "ul"  
	    	});
		  	var tmp = $(this).parents('.weekday').html();
		  	var sendData = {'html':tmp};
		  	alert(tmp);
		  	$.ajax({
		            url:'listAdd.do',
		            type:'post',
		            dataType:"json",
		            data: sendData,
		            /* dataType:'text', */ 
		            success:function(data){
		            	alert(data);
		            }
		    });
			 
  	    });
  	    
  	    $("#insertContent").tooltip();
  	    $(this).on("click","#insertContent",function(){
  	    	
  	    	$(this).parent("#contentText").siblings("#newTA").css('display','inline');
  	    	$(this).parent("#contentText").siblings("#showContent").css('display','none');
  	    	$(this).css('display','none');
  	    	
  	    	tinymce.init({
  	    	  selector: '#mytextarea',
  	    	  height: 200,
  	    	  theme: 'modern',
  	    	  plugins: [
  	    	    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
  	    	    'searchreplace wordcount visualblocks visualchars code fullscreen',
  	    	    'insertdatetime media nonbreaking save table contextmenu directionality',
  	    	    'emoticons template paste textcolor colorpicker textpattern imagetools'
  	    	  ],
  	    	  toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
  	    	  toolbar2: 'print preview media | forecolor backcolor emoticons',
  	    	  image_advtab: true,
  	    	  templates: [
  	    	    { title: 'Test template 1', content: 'Test 1' }

  	    	  ],
  	    	  content_css: [
  	    	    '//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
  	    	    '//www.tinymce.com/css/codepen.min.css'
  	    	  ]
  	    	   
  	    	 });
  	      	 
  	    });
  	    $(this).on("click","#contentInsert",function(){
  	    	var tmp = tinyMCE.activeEditor.getContent();
  	    	$(this).parent("#newTA").css('display',"none");
  	    	$(this).parent("#newTA").siblings("#showContent").css('display',"inline");
  	    	$(this).parent("#newTA").siblings("#showContent").empty();
  	    	$(this).parent("#newTA").siblings("#showContent").append(tmp);
  	    	$(this).parent("#newTA").siblings("#contentText").children("#insertContent").css('display',"inline");
  	    });
  	  $(this).on("click","#contentCancel",function(){
	    	var tmp = tinyMCE.activeEditor.getContent();
	    	$(this).parent("#newTA").css('display',"none");
	    	$(this).parent("#newTA").siblings("#showContent").css('display',"inline");
	    	$(this).parent("#newTA").siblings("#contentText").children("#insertContent").css('display',"inline");
	    });
  	  $(this).on("click","#priorityBtn",function(){
  		 obj = document.getElementById('priorityDiv');
  		if(obj.style.display == "none"){
  		  	$("#priorityDiv").css('display','inline');
  		}else{
  			$("#priorityDiv").css('display','none');
  		}
  		
  	  });
  	  $(this).on("click","#priorityInsert",function(){
  			$("#priorityDiv").css('display','none');
  			var op1 = $(':radio[name="option1"]:checked').val();
  			
		  	var op2 = $(':radio[name="option2"]:checked').val();
		  	$('input').prop('checked', false);
		  	$('#modalPriority').empty();
	  		$('#modalPriority').append("<span class='glyphicon glyphicon-star'>�켱����</span><br/><div id='priorityIf'></div> ");
	  		if(op1!=null){
	  			$("#priorityIf").append("<span style='background-color:"+op1+"'> �߿䵵</span>");
	  		}
	  		if(op2!=null){
	  			$("#priorityIf").append("<span style='background-color:"+op2+"'> ��ȣ��</span>");
	  		}
  	  });
  	  $(this).on("click","#priorityCancel",function(){
  		$("#priorityDiv").css('display','none');
  		$('#modalPriority').empty();
  	  });
  	  $(this).on("click","#checkBtn",function(){
  		  obj = document.getElementById('checkDiv');
  		  if(obj.style.display=="none"){
  		  	$("#checkDiv").css("display","inline");
  		  }else{
  			$("#checkDiv").css("display","none");
  		  }
  		  
  	  });
  	  $(this).on("click","#checkInsert",function(){
  		  $("#dateDiv").css("display","none");
  		  $("#checklistadd").css("display",'inline');
  		  var title = $('#checkTitle').val();
  		  $('#checklisttitle').text(title);
  	  });
  	$(this).on("click","#checkCancel",function(){
		  $("#checklistadd").empty();
	  });

	    $(this).on("click","#dateBtn",function(){
	    	 obj = document.getElementById('dateDiv');
	    	 if(obj.style.display=="none"){
	    		$("#dateDiv").css("display","inline");
	    	 }else{
	    		$("#dateDiv").css("display","none");
	    	 }
	    });

	   	$(this).on("click","#btnMap",function(){
	   		obj = document.getElementById('mapApp');
	   		if(obj.style.display=="none")
	   			$("#mapApp").css("display","inline");
	   		else
	   			$("#mapApp").css("display","none");
	   		
	   		obj = document.getElementById('modalMap');
	   		if(obj.style.display=="block")
	   			$("#modalMap").css("display","none");
	   	});
	   	$(this).on("click","#labelBtn",function(){
	   		obj = document.getElementById('labelDiv');
	   		if(obj.style.display=="none"){
	   			$("#labelDiv").css("display","inline");
	   		}
	   		else{
	   			$("#labelDiv").css("display","none");
	   		}
	   	});
	   $(this).on("click","#labelDelete",function(){
			$('#modalLabel').empty();
	   });
	   $(this).on("click","#labelInsert",function(){
		    $('#modalLabel').empty();
		    labelColor = $(':radio[name="option10"]:checked').val();
			$('#modalLabel').append("<span class='glyphicon glyphicon-tags'>��</span><br/><div style='width:50px; background-color:"+labelColor+" '>&nbsp;</div> ");
	   });
	   
	   	
	   $(this).on("click","#mapSearch",function(){
	   		$("#modalMap").css("display","block");
	   		map.relayout();
	   	});
	   
	   $(this).on("click","#mapCancel",function(){
	   		$("#modalMap").css("display","none");
	   		
	   	});
  
	    $('#sdate').datepicker();
	    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
	    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
	        $("#edate").datepicker( "option", "minDate", selectedDate );
	    });
	 
	    $('#edate').datepicker();
	    $('#edate').datepicker("option", "minDate", $("#sdate").val());
	    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
	        $("#sdate").datepicker( "option", "maxDate", selectedDate );
	    });
	    
	    $(this).on("click","#dateInsert",function(){
	    	$("#dateDiv").css("display","none");
	    	var title = $('#glypTitle').text();
	    	
	    	var startDate= $('#sdate').val();
	    	var endDate=$('#edate').val();
	    	
	    	var events=new Array();     
	    	event = new Object();       
	    	event.title = title; 
	    	event.start = startDate;    // its a date string
	    	event.end = endDate;
	    	if(labelColor==null){
	    	event.color = "green";
	    	}else{
	    		event.color = labelColor;
	    	}
	    	event.allDay = false;

	    	events.push(event);
	    	$('#calendar').fullCalendar('addEventSource',events);
	    	$('#modalDate').empty();
	    	$('#modalDate').append("<span class='glyphicon glyphicon-calendar'>������¥</span><div id='sdateDiv'> <b>������ </b>: "+startDate+"</div>");
	    	if(endDate!=""){
	    		$('#modalDate').append("<div id='edateDiv'> <b>������ </b>: "+endDate+"</div>");
	    	}
	    });
	    $(this).on("click",".listDelete",function(){
	    	if (confirm('�ش� ����Ʈ�� ���� �Ͻðڽ��ϱ�?')) {
	    		$(this).parents(".weekday").remove();    
	    	} else {
	    	    // Do nothing!
	    	}
	    	
	    });
		$(this).on("click","#fileUpButton",function(){
			obj = document.getElementById('fileUpDiv');
	   		if(obj.style.display=="none")
	   			$("#fileUpDiv").css("display","inline");
	   		else
	   			$("#fileUpDiv").css("display","none");
		});
		$(this).on("click","#fileDelete",function(){
			$("#fileUpDiv").css('display','none');
		});
	    $(this).ready(function(){
	        function readURL(input) {
	            if (input.files && input.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) { 
	                    $('#blah').attr('src', e.target.result);
	                }                    
	                reader.readAsDataURL(input.files[0]);
	            }
	        }
	  	       $("#upload").change(function(){
	  	    	   readURL(this);
	        });
	     });
	    
	    $(this).on("click","#addchecklist",function(){
			$('#checkready').append("<textarea cols='30' rows='1' id='chetext'></textarea>");
			$('#complecheck').css('display',"inline");
			document.getElementById("complecheck").disabled=false;
			document.getElementById("addchecklist").disabled=true;
		}); 

		$(this).on("click","#complecheck",function(){
			var message = $('textarea#chetext').val();
			$('#chetext').css('display',"none");
			$('#checkready').append("<form id='checkboxform'><p><input type='checkbox' />"+message+"</p></form>");
			document.getElementById("addchecklist").disabled=false;
			document.getElementById("complecheck").disabled=true;
			 $('#chetext').remove();
			 
			 $('#checkready').ready(function() {
		      	  
		      	  // get box count
		      	  var count = 0;
		      	  var checked = 0;
		      	  function countBoxes() { 
		      	    count = $("input[type='checkbox']").length;
		      	    console.log(count);
		      	  }
		      	  
		      	  countBoxes();
		      	  $(":checkbox").click(countBoxes);
		      	  
		      	  // count checks
		      	 function countChecked() {
			      	    checked = $("input:checked").length;
			      	    
			      	    var percentage = parseInt(((checked / count) * 100),10);
			      	    $(".progressbar-bar").progressbar({
			      	            value: percentage
			      	        });
			      	    $(".progressbar-label").text(percentage + "%");
			      	  }
			      	  
			      	  countChecked();
			      	  $(":checkbox").click(countChecked);
		      	 
		      	});
		});

	    
});



//����
var map;
var marker = '';
var position = new daum.maps.LatLng(37.572730, 126.970204);
 
 $("#map").ready(function() {
  //�˻�â�� ���� �Է½� ��ǥ �˻�
              $("#txtAddress").keydown(function(e) {
                  if (e.keyCode == 13) {
                  	$("#map").css("display","block");
                 		map.relayout();
                      Search();
                  }
              });
  
  //���� �ʱ�ȭ
              map = new daum.maps.Map(document.getElementById('map'), {
                  center: position,
                  level: 4,
                  mapTypeId: daum.maps.MapTypeId.ROADMAP
              });

/*                marker = new daum.maps.Marker({
                  position: position
              });

              marker.setMap(map)
*/
  //�������� ��ġ Ŭ���� Ŭ���� ��ġ�� ��ǥ Ȯ��
              daum.maps.event.addListener(map, "click", function(e) {
   //������ ������ ��Ŀ ����
                  if (marker != '') {
                      marker.setMap(null);
                  }
                  //temp�� ���� Ŭ���� ��ǥ �Է�
                  var lat = e.latLng.getLat();
                  var lng = e.latLng.getLng();
   var temp = new daum.maps.LatLng(lat, lng);
   //��ǥ ���
                  $("#latlng").html("���� " + lat.toString().substr(0, 10) + ", ���� " + lng.toString().substr(0, 10));
   //temp�� �Էµ� ��ǥ���� �߽����� ���� �̵�
                  map.panTo(temp);
   //temp�� �Էµ� ��ǥ���� ��Ŀ ����
                  marker = new daum.maps.Marker({
                      position: temp
                  });
                  marker.setMap(map);
              });
          });

          function Search() {
              var query = $("#txtAddress").val();
              $("#txtAddress").val('');
              getPoint(query);
          }

 //�ּ�->��ǥ�� ��ȯ���ִ� api ���
          function getPoint(query) {
              var oScript = document.createElement("script");
              oScript.type = "text/javascript";
              oScript.charset = "utf-8";
              oScript.src = "http://apis.daum.net/local/geo/addr2coord?apikey=d82c75b3a6b33cfad136796fbe876e68a518b478&output=json&callback=pongSearch&q=" + encodeURI(query);
              document.getElementsByTagName("head")[0].appendChild(oScript);
          }
 
 //��ǥ ��ȯ �� �ش� ��ǥ�� �̿��� �ݹ�(Ŭ���ÿ� ������ ����)
          function pongSearch(data) {
              marker = '';
              if (data.channel.item.length == 0) {
                  alert("����� �����ϴ�.");
              } else {
                  if (marker != '') {
                      marker.setMap(null);
                  }
                  var temp = new daum.maps.LatLng(data.channel.item[0].lat, data.channel.item[0].lng);
                  $("#latlng").html((data.channel.item[0].lat).toString().substring(0, 10) + ", " + (data.channel.item[0].lng).toString().substring(0, 10));
                  map.panTo(temp);
                  marker = new daum.maps.Marker({
                      position: temp
                  });
                  marker.setMap(map);
              }
          }//����!!!!!!!!

</script>
<title>���� ���� ���Ϸ� �̷���</title>
</head>
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery">
	<!--=== Header ===-->
	<nav class="one-page-header navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="menu-container page-scroll">
				<!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				-->
				<a class="navbar-brand" href="#intro">
					<span>��</span>����
					<!-- <img src="assets/img/logo1.png" alt="Logo"> -->
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<li class="page-scroll home">
							<a href="#body"><span class="glyphicon glyphicon-home"></span>������</a>
						</li>
						<li class="page-scroll home">
							<a href="#about"><span class="glyphicon glyphicon-log-in"></span>�α���</a>
						</li>
						<li class="page-scroll home">
							<a href="#services"><span class="glyphicon glyphicon-user"></span>ȸ������</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--=== End Header ===-->
	 <div id="sist" class="row">
	    <div class=" col-md-6 half" id='calendar'>
        	<div id="calendar_attr">
				<div id='calendar_container'></div>
				</div>    	
			</div>
   		 <div class="col-md-6 half" id ='cardList' >
			<div style="clear:both"></div>
			<div id="timetable" style="float:left;max-width:7000px;">
				<input style="align:left" type="button" value="����Ʈ �߰�" id="listAddBtn">
	    		<div style="text-align:center">
	    		
	    		</div>
	    		
	    	<!-- 	<div class="weekday col-md-1">
	    			<div class='listHeader'>
	    				<p> Title
	    				<button type="button" class="btn btn-sm btn-default listDelete" style="float:right">
         							 <span class="glyphicon glyphicon-trash"></span>
     					   </button>
     					</p>
	    			</div>
	        		<ul class="items">
			            <li class="list">  ������1</li>
			            <li class="list">����1</li>
	      			</ul>
	      			<div class = 'listFoot'>
	      				<button class="btn-primary footText" type="button"> ���� �߰��ϱ�</button>
						<div class='footInput' style='display:none;'>	
							<textarea cols='31' rows='3' style="resize:none"></textarea>
							<input type="button" value="�߰�" class="cardInsert btn-primary" />
							<input type="button" value="���" class="cardCancel btn-primary" />
						</div>
				</div>
	    		</div>      -->
	    		
	    		
	    		<div class="weekday col-md-1">
	    		
	    			
	    			<div class="addListBtn">
	    				<span>����Ʈ �߰��ϱ�..</span>
	    			</div>
	    			
	    			<div class="addListPanel" style="display:none;">
	    				<input name="name" class="addListTxt" type="text" placeholder="����Ʈ �߰��ϱ�.."/>
	    				<input type="button" value="�߰�" class="listTitleBtn" />
	    				<input type="button" value="���" class="listTitleCancel" />
	    			</div>
	    		</div>
	    		
	    		
	    		
	    		
			</div>
	    </div>
    </div>
	  <div class="modal fade" id="cardDetail" role="dialog" >
    <div class="modal-dialog">
 		<div>
 			  <jsp:include page="detail.jsp" flush="false" /> 
 		</div>   

      
    </div>
  </div>   	    
</body>
		<!-- JS Global Compulsory -->
		
</html>