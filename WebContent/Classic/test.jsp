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

#priorityDiv .btn span.glyphicon {    			
	opacity: 0;				
}
#priorityDiv .btn.active span.glyphicon {				
	opacity: 1;				
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
					<div id="modalDate">
					</div>
					<div id="modalTextarea">
						<div id="contentText" style="font: bold;">���� ���� <span id="insertContent" data-toggle="tooltip" title="���� ���� ����"> ���� </span></div>
						<div id="newTA" style="display:none">
						 	<textarea id="mytextarea" >
	  					  	</textarea>
		  					<button type="button" class="btn btn-default btn-sm" id="contentInsert">�Է�</button>
		  					<button type="button" class="btn btn-default btn-sm" id="contentCancel" >���</button>
  					  </div>
  					  <div id="showContent" style="display:none">
  					  
  					  </div>
				</div>
				
					<div id="modalMid">
						<div id="map" style="width:400px;height:300px;display:none"></div>
					</div>
				
				</div>
				
			</div>
			<div class="col-sm-3" id="sideBar">
				<button type="button" class="btn btn-default btn-sm"  id="dateBtn">
         			 <span class="glyphicon glyphicon-calendar"></span> ����
        		</button>
        		<div id="dateDiv" style="display:none">
        			<div>
        			������<input type='text' id='sdate'>
        			</div>
        			<div>
        			������<input type='text' id='edate'>
        			</div>
        			<div>
        				<input type="button" id="dateInsert" class=btn-sm" value="����"/>
        				<input type="button" id="dateDelete" class=btn-sm" value="����"/>
        			</div>
        		</div>
				<div class="dropdown">
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
		        
		        <button type="button" class="btn btn-default btn-sm" id="btnMap">
		          <span class="glyphicon glyphicon-map-marker"></span> ��ġ����
		        </button>
		  		 <div id="mapApp" style="display:none"><br>
        			 <label>�ּҰ˻� </label>
        			 <input id = "txtAddress" type="text" style="width : 100px">
        			 <button type="button" onclick="Search();" id="mapSearch">ã��</button>
     			 </div>
		        
		        
		        <br><br>                          <%-- �پ� --%>
		        
		        
		        <button class="btn btn-default btn-sm" type="button" id="priorityBtn" >		        	
		          <span class="glyphicon glyphicon-star"></span> �켱���� ����
		        </button>
		        <div class="container">
		       		<p>�߿䵵</p>
						<div class="btn-group" data-toggle="buttons"  id ="priorityDiv" style="display:none">			
							<label class="btn" style="background-color: red">
								<input type="radio" name="option1" id="option2" autocomplete="off" checked>
								<span class="glyphicon glyphicon-ok" ></span>
							</label>
				
							<label class="btn btn-primary">
								<input type="radio" name="option1" id="option1" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-info">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-default">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</div> 
						<br/><br/>
							<p>�߿䵵</p>
						<div class="btn-group" data-toggle="buttons"  id ="priorityDiv" style="display:none">			
							<label class="btn" style="background-color: red">
								<input type="radio" name="option1" id="option2" autocomplete="off" checked>
								<span class="glyphicon glyphicon-ok" ></span>
							</label>
				
							<label class="btn btn-primary">
								<input type="radio" name="option1" id="option1" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-info">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-default">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</div> 
				</div>

				
		        
		       <div class="dropdown">
		       <br><br>		
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