<%-- 
    Document   : feedback form
    Created on : 15 Feb, 2019, 8:49:30 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style type="text/css">
    #Text1 {
        width: 300px;
    }
    .auto-style5 {
        width: 91px;
        height: 40px;
    }
    .auto-style6 {
        width: 284px;
        height: 40px;
    }

    #Text2 {
        width: 246px;
    }
    #Text3 {
        width: 246px;
    }
    #Text4 {
        width: 246px;
    }
    #Text5 {
        width: 246px;
    }
    #Text6 {
        width: 246px;
    }
</style>
<style>

    * {
        box-sizing: border-box;
    }

    body {

        font-family: Arial;
        padding: 10px;
        background: #6495ED;
    }
    label
    {
        font-size: 20px;
        left: 50%;
    }
    /* Header/Blog Title */
    .header {
        padding: 30px;
        //background-color: #ffffff;
        background-image: url(http://www.international.gouv.qc.ca/Content/Users/Documents/FicheContenu/106.jpg);
        //background-size: 2000px 400px;

        background-repeat: no-repeat;



    }

    .header h1 {
        font-size: 50px;
        // background-image: url("C:\Users\shraddha\Desktop\TYBScProjectWork\bg1.jpg")
    }

    /* Style the top navigation bar */
    .topnav {
        overflow: hidden;
        background-color: #333;
    }

    /* Style the topnav links */
    .topnav a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    /* Change color on hover */
    .topnav a:hover {
        background-color: #ddd;
        color: black;
    }

    /* Create two unequal columns that floats next to each other */
    /* Left column */
    .leftcolumn {   
        float: left;
        width: 75%;
    }

    /* Right column */
    .rightcolumn {
        float: right;
        width: 25%;
        //background-color: #f1f1f1;
        padding-left: 20px;
    }

    /* Fake image */
    .fakeimg {
        background-color: #aaa;
        width: 100%;
        padding: 20px;
    }

    /* Add a card effect for articles */
    .card {
        background-color: white;
        padding: 20px;
        margin-top: 20px;
    }

    /* Clear floats after the columns */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    /* Footer */
    .footer {
        padding: 20px;
        text-align: center;
        background: #ddd;
        margin-top: 20px;
    }

    /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 800px) {
        .leftcolumn, .rightcolumn , .header {   
            width: 100%;
            padding: 0;
        }
    }

    /* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
    @media screen and (max-width: 400px) {
        .topnav a {
            float: none;
            width: 100%;
        }
    }

    body {
        background-color: #6495ED;
        font-family: Arial, Helvetica, sans-serif;}
    form {border: 3px solid #f1f1f1;}

    input[type=text], input[type=password], input[type=email],input[type=select], input[type=file]{
        width: 90%;;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 3px solid #ccc;
        box-sizing: border-box;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 15px;
    }

    textArea

    {
        width: 70%;
        height: 75px;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    button:hover {
        opacity: 0.8;
    }

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
    }

    img.avatar {
        width: 40%;
        border-radius: 50%;
    }

    .container {
        padding: 16px;
    }

    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
</style>

<script type="text/javascript">

    // polyfill for RegExp.escape
    if (!RegExp.escape) {
        RegExp.escape = function (s) {
            return String(s).replace(/[\\^$*+?.()|[\]{}]/g, '\\$&');
        };
    }

</script>
<style>
    /* unvisited link */
    a:link {
        color: red;
    }

    /* visited link */
    a:visited {
        color: green;
    }

    /* mouse over link */
    a:hover {
        color: hotpink;
    }

    /* selected link */
    a:active {
        color: blue;
    }
</style>
<script>
    window.location.hash = "no-back-button";
    window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
    window.onhashchange = function () {
        window.location.hash = "no-back-button";
    }
</script> 
<style>
    table{
        font-family: Calibri;
        font-size: 30px;
        font-style: normal;
        font-weight: bold;
        background: #ccc;
        border-collapse: collapse;
        border: 2px solid;
        width: 50%;
    }  
    table.inner{
        border:0px;
    }
</style>
    </head>
    <body>
        <form action="feedbacksubmit.jsp" method="post">
        <table align="center" border="1">
                <tr>
                    <td>Preferred Salutation:</td>
                    <td><select name="drp" style="width: 90%;
                                padding: 12px 20px;
                                margin: 8px 0;
                                display: inline-block;
                                border: 3px solid #ccc;
                                box-sizing: border-box;
                                font-family: Arial, Helvetica, sans-serif;
                                font-size: 15px;
                                width:90%;>
                            <option value="Mr" >Mr</option>
                            <option value="Mrs">Mrs</option>
                            <option value="Miss">Miss</option>
                            <option value="Ms">Ms</option>
                            <option value="Dr">Dr</option>
                            <option value="Prof">Prof</option>
                            <option value="Rev">Rev</option>
                        </select></td>
                <tr>
                    <td>Full Name:</td>
                    <td><input type="text" name="name" placeholder="Full Name" required></td>
                </tr>
                <tr><td>Mobile Number:</td>
                    <td><input type="text" name="mobile" placeholder="Mobile Numebr" required></td>
                </tr>
                <tr><td>Email:</td>
                    <td><input type="email" name="email" placeholder="Email" required></td>
                </tr>
                <tr><td>Subject:</td>
                    <td><input type="text" name="subject" placeholder="Subject" required></td>
                </tr>
                <tr>
                    <td>Feedback</td>
                    <td><textarea name="feedback" rows="4" cols="20">
                        </textarea></td>
                </tr>
                <tr>
                    <td><button type="submit" style="font-size: 30px; width: 180px;">Submit</button></td>
                    <td ><button type="reset" style="font-size: 30px; width: 180px;">Cancel</button></td>

                    <!--<td><button type=reset style="font-size: 30px; width: 180px;">Cancel</button></td>-->
                </tr>


            </table>
        </form>
    </body>
</html>
