<%@ include file="connect.jsp" %>
<link rel="stylesheet" href="./style.css">
<title>Workshop</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<center>
<%
try{
  PreparedStatement pst1 = con.prepareStatement("select * from Workshop");
  ResultSet rs1 = pst1.executeQuery();
  while(rs1.next()){
    String workshop_id = rs1.getString(1);
    String workshop_name = rs1.getString(2);
    String workshop_date = rs1.getString(3);
    String workshop_description = rs1.getString(4);
    String workshop_author = rs1.getString(5);
    String workshop_mode = rs1.getString(6);
    String workshop_pic = rs1.getString(7);
    String form_url = "form.jsp?workshop_id="+workshop_id; 

%>
<form action=<%=form_url%> method = "post">
  <div class="main">
    <div class="card">
    <div class="post">
      <img class="post-image" src="./image/<%=workshop_pic%>"/>
      
      <div class="post-content">
        <p class="post-header"> <a href="#"><%=workshop_name%></a> </p>
        <p class="post-text">
          Date:  <%=workshop_date%>    <br>
          Author:   <%=workshop_author%>  <br>
          Description: <%=workshop_description%>
        </p>
        <div class="frame">
          <button class="custom-btn btn-16">Register</button>
        </div>
      </div>
      
    </div>
  </div>
</div>
</form>

<%
}
}
catch(Exception e){
  out.println(e);
}
con.close();
%>
</center>