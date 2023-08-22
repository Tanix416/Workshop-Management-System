function func5() {
  var email = document.getElementById("email").value;
  var phno = document.getElementById("phno").value;
  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  var phoneno = /^\d{10}$/;
  if (!email.match(mailformat)) {
    alert("Please enter a valid email adderss!!!");
    return false;
  }
  if (!phno.match(phoneno)) {
    alert("Enter a valid phone number");
    return false;
  }
}


function func2(p1,p2)
{
    //alert(p1)
    xmlHttp=GetXmlHttpObject()
    //alert(xmlHttp);
    url="Email-check.jsp?email="+p1+"&workshop_id="+p2;    
   // alert(url);
    xmlHttp.onreadystatechange=stateChanged1
    xmlHttp.open("GET",url,true)
    xmlHttp.send(null)
}

function stateChanged1() 
{ 
	
	var showdata = xmlHttp.responseText; 
	//alert(showdata);
  if(showdata==1){
    document.registration.email.value="";
    document.getElementById("result1").innerHTML="<font color=red>Email Alredy Exsist</font>";
  }
  else{
    document.getElementById("result1").innerHTML="<font color=green>Email does not exsist</font>";
  }
}

function GetXmlHttpObject()
{
var xmlHttp=null;
try
 {
 // Firefox, Opera 8.0+, Safari
 xmlHttp=new XMLHttpRequest();
 }
catch (e)
 {
 //Internet Explorer
 try
  {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e)
  {
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}
