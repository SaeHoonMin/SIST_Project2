<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body{
		font-family:'Malgun Gothic';
		font-size: 15px;
		padding : 20px;
}
#modalBody{
	background-color: white;
	padding:20px;
}
#modalTitle{
	border : 1px solid;
	margin:20px;
	padding:20px;
	border-radius : 3px;
}
#content{
	height : 50px;
	border: 2px;
	
}
#glypTitle{
	font-size: 25px;
}

#mytextarea{
	
}
#modalTextarea{

}
#insertContent{
	text-decoration: underline;
}
#insertContext:HOVER {
	color : gray;
	font-size: 150%;
}
#listName{
	padding-left:20px;
}
#contentText{
	font-size : 15px;
}
#sideBar{
	
	padding : 10px;

}

</style>
</head>
<body>
	
	<div class="modal-content" id="modalBody">
		<div class="row">
			 <p1></p1>     <%-- �� �� ���°� --%>
		     <p2></p2>
		     <p3></p3>
		     <p4></p4>
		     <p5></p5>
		     <p6></p6>   
			<div id="content" >
				
			</div>
			<div class="col-sm-9">
				<div id="modalTitle">
					<span class="glyphicon glyphicon-list-alt" id="glypTitle">����</span><span id="listName">list name</span>
					<div id="modalTextarea">
						<div id="contentText" style="font: bold;">���� ���� <span id="insertContent"> ���� </span></div>
						<div id="newTA" style="display:none">
						 	<textarea id="mytextarea" >
	  					  	</textarea>
		  					<button type="button" class="btn btn-default btn-sm" id="contentInsert">�Է�</button>
		  					<button type="button" class="btn btn-default btn-sm" id="contentCancel" >���</button>
  					  </div>
  					  <div id="showContent" style="display:none">
  					  
  					  </div>
				</div>
				</div>
				
			</div>
			<div class="col-sm-3" id="sideBar">
				<div class="dropdown">
				<button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-time" ></span>  �Ⱓ ����
		        </button>
		        <br/><br/>
		        <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-user" ></span>  �ο� �߰�
		        </button>
		        <br/><br/>
           			<button type="button" class="btn btn-default btn-sm" data-toggle="dropdown">
              			<span class="glyphicon glyphicon-send"></span> SNS����
              			<span class="caret"></span>
            			<ul class="dropdown-menu">
					          <li><a href="#">FaceBook</a></li>
					          <li><a href="#">Twitter</a></li>
          				</ul>
      				</button>
        		</div>
        		<br>                          <%-- �پ� --%>        
		        <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-paperclip" ></span>  ����÷��
		        </button>
		        <br><br>                       <%-- �پ� --%>
		        
		         <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-envelope"></span>  ����
		        </button>          
		         
		         <br><br>                       <%-- �پ� --%>
		         
		         <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-ok"></span> üũ����Ʈ
		        </button>
		        
		         <br><br>                        <%-- �پ� --%>
		        
		        <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-map-marker"></span> ��ġ����
		        </button>
		        
		        <br><br>                          <%-- �پ� --%>
		        
		       <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-star"></span> �켱���� ����
		        </button>
		       
		       <br><br> 
		       <div class="dropdown">
       			    <button type="button" class="btn btn-default btn-sm" data-toggle="dropdown">
             			 <span class="glyphicon glyphicon-tags"></span> ��
       				     <span class="caret"></span></button>
          			<ul class="dropdown-menu">
				          <li><button class="w3-btn w3-red" id="btn1">����</button></li>              <%-- �� �� --%>
				          <li><button class="w3-btn w3-yellow" id="btn3">���</button></li>
				          <li><button class="w3-btn w3-green" id="btn5">�ʷ�</button></li>
				          <li><button class="w3-btn w3-pink" id="btn7">��ȫ</button></li>
				          <li><button class="w3-btn w3-black" id="btn9">����</button></li>
        		  </ul>
     		   </div>     
		    
			</div>
		</div>
	
	</div>
</body>
</html>