<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<head>


    <title>CSS Tutorial | Layout</title>
    <style>
      .carousel-inner > .item > img,
       .carousel-inner > .item > a > img{
      width: 20%;

     }
      #jb-container {
        width: 910px;
        height: 790px;
        margin: 0px auto;
        padding: 20px;
        border: 1px solid #bcbcbc;
        background-color: white;
        
      }
      #jb-header {
        height:35px;
        padding: 5px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
        
      }
        
      #jb-content {
        width: 580px;
        height: 690px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        color:black;
        border: 1px solid #bcbcbc;
            <%-- background-color:#65BD13;   --%>        
        
        
      }
      #jb-sidebar {
        width: 280px;
        height: 690px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
        background-color:teal;
        
      }
      #jb-sidebar2 {
        width: 230px;
        height: 645px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
        
      }
      
      #jb-footer {
        
        height:35px;
        clear: both;
        padding:20px;
        border: 1px solid #bcbcbc;
      }
      
    .glyphicon {
    font-size: 10px;
    width: 20px;
    color: #65BD13;
    

}
</style>

  </head>
  
  <body>
    <div id="jb-container">
    <div class="rows">
        <%-- ��� --%>
        
        
     <div class="form-group">
       <textarea class="form-control" rows="2" id="comment" placeholder="impossible is nothing.."></textarea>  <%-- ��� --%>
     </div>
      

      <div id="jb-content" class="col-md-8">
      
     <div class="form-group">             <%-- ���� --%>
      
      <a href="#">
          <span class="glyphicon glyphicon-comment"></span>
      </a>
      
    <label for="usr">����:</label>
      <input type="text" class="form-control" id="usr" placeholder="title..">
    </div>

                                            <%-- ���� --%>   
    <div class="form-group">
    
  <a href="#">
    <span class="glyphicon glyphicon-comment"></span>
  </a>                    
     
      <label for="usr">����:</label>          
     <textarea class="form-control" rows="25" id="comment" placeholder="write.."></textarea>
    </div>
     <div class="form-group">
       <textarea class="form-control" rows="3" id="comment" placeholder="add.."></textarea>  <%-- ��� --%>
     </div>
     <button class="w3-btn w3-teal" >Button</button>
     <button class="w3-btn w3-teal w3-disabled">Button</button>

     </div>
      <div id="jb-sidebar" class="col-md-4">     
                  <%-- <div id="jb-sidebar2" class="col-sm-4"> ���̵�� 2 --%>                           
                     <%-- ��  --%> 
        
          <div class="dropdown">
           <button type="button" class="btn btn-default btn-sm" data-toggle="dropdown">
              <span class="glyphicon glyphicon-send"></span> ����
              <span class="caret"></span>
            <ul class="dropdown-menu">
          <li><a href="#">FaceBook</a></li>
          <li><a href="#">Twitter</a></li>
          </ul>
          </button>
        </div>
        <br>                          <%-- �پ� --%>
        
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-paperclip" ></span>  ÷��
        </button>
        <br><br>                       <%-- �پ� --%>
        
         <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-envelope"></span>  ����
        </button>          
         
         <br><br>                       <%-- �پ� --%>
         
         <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-ok"></span> üũ
        </button>
        
         <br><br>                        <%-- �پ� --%>
        
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-map-marker"></span> ��ġ
        </button>
        
        <br><br>                          <%-- �پ� --%>
        
       <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-star"></span> �߿�
        </button>
       
       <br><br> 
       
       <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-tags"></span> ��
        </button>
       
       </div>
    </div>
      </div>
  </body>
</html>