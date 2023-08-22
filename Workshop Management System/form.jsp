<%
int workshop_id = Integer.parseInt(request.getParameter("workshop_id"));
String form_url = "workshop_register_submit.jsp?workshop_id="+workshop_id;
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Registration Form</title>
    <link rel="stylesheet" href="./style_form.css" />
  </head>
  <body>
    <!-- partial:index.partial.html -->
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="style.css" />
        <title>Form Validator</title>
      </head>

      <body>
        <div class="container">
          <div class="column1">
            <form id="form" name="registration" class="form" action=<%=form_url%> onsubmit="return func5()" method="post">
              <h2>Register with us</h2>
              <div class="form-control">
                <label for="username">Username</label>
                <input type="text" id="username" name="name" placeholder="Enter username" />
              </div>
              <div class="form-control">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="Enter email" onkeyup="func2(this.value,'<%=workshop_id%>') "/>
                <div id="result1"></div>
              </div>
              <div class="form-control">
                <label for="password" >Mobile Number</label>
                <input
                  type="Phone Number"
                  id="phno"
                  name="phno"
                  placeholder="Enter Mobile Number"
                />
              </div>
              <div class="form-control">
                <label for="Institite">Institite Name</label>
                <input type="text" name="insti" placeholder="Enter Institite Name " />
              </div>
              <button>Submit</button>
            </form>
          </div>
          <div class="column2">
            <img
              src="./image/pablo-sign-up.png"
              alt="pablo-sign-up"
              border="0"
              class="signup-image"
            />
          </div>
        </div>
        <script src="script.js"></script>
      </body>
    </html>
    <!-- partial -->
    <script src="./script.js"></script>
  </body>
</html>
