<%@include file = "connect.jsp" %>

<%
PreparedStatement pst = con.prepareStatement("insert into Workshop_registration_details values(?,?,?,?,?)");
String workshop_id = request.getParameter("workshop_id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phno = request.getParameter("phno");
String insti = request.getParameter("insti");

pst.setString(1,workshop_id);
pst.setString(2,name);
pst.setString(3,email);
pst.setString(4,phno);
pst.setString(5,insti);

int t = pst.executeUpdate();
if (t>0)
{
   String email_url = "send_email.jsp?email="+email;
   response.sendRedirect(email_url);
}
con.close();
%>