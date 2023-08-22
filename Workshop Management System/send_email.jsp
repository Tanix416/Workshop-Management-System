<%@ page import="javax.mail.*, javax.mail.internet.*, javax.activation.*" %>
<%@ page import="java.util.Properties" %>

<%-- Define the email parameters --%>
<%
try{
   String host = "smtp.gmail.com"; // SMTP server
   String port = "587"; // SMTP port
   String username = "arkoprabho12@gmail.com"; // Your email address
   String password = "sqrqrfjxukqpdlhi"; // Your email password
   String recipient = request.getParameter("email"); // Recipient's email address
   String subject = "Auto-generated Email"; // Email subject
   String content = "Thank you"; // Email content

   // Set the properties
   Properties props = new Properties();
   props.put("mail.smtp.auth", "true");
   props.put("mail.smtp.starttls.enable", "true");
   props.put("mail.smtp.host", host);
   props.put("mail.smtp.port", port);
   props.put("mail.smtp.ssl.protocols", "TLSv1.2");

   // Create the session
   Session sessionObj = Session.getInstance(props, new Authenticator() {
       protected PasswordAuthentication getPasswordAuthentication() {
           return new PasswordAuthentication(username, password);
       }
   });

   // Create the email message
   Message message = new MimeMessage(sessionObj);
   message.setFrom(new InternetAddress(username));
   message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
   message.setSubject(subject);
   message.setText(content);

   // Send the email
   Transport.send(message);
}
catch(Exception e){
   out.println(e);
}
response.sendRedirect("index.jsp");
%>

