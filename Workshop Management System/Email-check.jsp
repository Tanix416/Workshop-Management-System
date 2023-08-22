<%@ include file="connect.jsp" %>
<%
     //out.println(request.getParameter("email"));
     //out.println(request.getParameter("workshop_id"));
     PreparedStatement pst=con.prepareStatement("select * from Workshop_registration_details where Email_address like ? and Workshop_id like ?");
     pst.setString(1,request.getParameter("email"));
     pst.setString(2,request.getParameter("workshop_id"));
     ResultSet rs=pst.executeQuery();
     if(rs.next())
     {
%>
1
<%
     }
     else
     {
%>
3
<%
     }
    con.close();
%>