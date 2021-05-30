<%-- 
    Document   : header
    Created on : 13 Feb, 2019, 9:24:52 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #slideshow { 
                margin: 50px auto; 
                position: relative; 
                width: 240px; 
                height: 240px; 
                padding: 10px; 
                box-shadow: 0 0 20px rgba(0,0,0,0.4); 
            }

            #slideshow > div { 
                position: absolute; 
                top: 10px; 
                left: 10px; 
                right: 10px; 
                bottom: 10px; 
            }
            * {
                box-sizing: border-box;
            }

            body {

                font-family: Arial;
                padding: 10px;
                background: #6495ED;
            }

            /* Header/Blog Title */
            .header {
                padding: 20px;
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
            .navbar {
                overflow: hidden;
                background-color: #333;
            }

            .navbar a {
                float: left;
                font-size: 16px;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            .dropdown {
                float: left;
                //overflow: hidden;
            }

            .dropdown .dropbtn {
                font-size: 16px;  
                border: none;
                outline: none;
                //color: white;
                padding: 14px 16px;
                //background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .navbar a:hover, .dropdown:hover .dropbtn {
                background-color: red;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
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
                height:50px;
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
                font-family: Arial, Helvetica, sans-serif;
            }

            * {
                box-sizing: border-box;
            }

            /* style the container */
            .container {

                position: static;
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px 0 30px 0;
                height: 400px;
            } 

            /* style inputs and link buttons */
            input,
            .btn {
                width: 100%;
                height: 70px;
                padding: 12px;
                border: none;
                border-radius: 4px;
                margin: 5px 0;
                opacity: 0.85;
                display: inline-block;
                font-size: 17px;
                line-height: 20px;
                text-decoration: none; /* remove underline from anchors */
            }

            input:hover,
            .btn:hover {
                opacity: 1;
            }

            /* add appropriate colors to fb, twitter and google buttons */
            .fb {
                background-color: #3B5998;
                color: white;
                height: 70px;
            }

            .twitter {
                background-color: #55ACEE;
                color: white;
                height: 70px;
            }

            .google {
                background-color: #dd4b39;
                color: white;
                height: 70px;
            }

            /* style the submit button */
            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            /* Two-column layout */
            .col {
                float: left;
                width: 50%;
                margin: auto;
                padding: 0 50px;
                margin-top: 6px;
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* vertical line */
            .vl {
                position: absolute;
                left: 50%;
                transform: translate(-50%);
                border: 2px solid #ddd;
                height: 175px;
            }

            /* text inside the vertical line */
            .vl-innertext {
                position: absolute;
                top: 50%;
                transform: translate(-50%, -50%);
                background-color: #f1f1f1;
                border: 1px solid #ccc;
                border-radius: 50%;
                padding: 8px 10px;
            }

            /* hide some text on medium and large screens */
            .hide-md-lg {
                display: none;
            }

            /* bottom container */
            .bottom-container {
                text-align: center;
                background-color: #666;
                border-radius: 0px 0px 4px 4px;
            }

            /* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 650px) {
                .col {
                    width: 100%;
                    margin-top: 0;
                }
                /* hide the vertical line */
                .vl {
                    display: none;
                }
                /* show the hidden text on small screens */
                .hide-md-lg {
                    display: block;
                    text-align: center;
                }
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
            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }
            .dropdown {
                float: left;
                //overflow: hidden;
            }

            .dropdown .dropbtn {
                font-size: 16px;  
                border: none;
                outline: none;
                //color: white;
                padding: 14px 16px;
                //background-color: inherit;
                font-family: inherit;
                margin: 0;
            }
        </style>
    </head>
    <body>

        <div class="header">
            <h1 style="height: 200px; top: 0px; left: 0px; width: 1254px;">
                <img src="C:\Users\shraddha\Desktop\TYBScProjectWork\logo.gif" style="height: 201px; width: 240px;
                     letter-spacing: 500px; position: relative; top: -66px; left: 394px;">
                <div class="auto-style1" style="position: relative; top: -227px; left: 676px; height: 30px; width: 625px;
                     bottom: 227px; margin-top: 0px;">
                    <strong class="auto-style2">MUMBAI POLICE</strong></div>
        </div>



        <div class="topnav">


            <a href="addsess.jsp" >New Programs</a>
           
            <a href="viewRegister.jsp">View Registration</a>
            <a href="viewComplaints.jsp">View Complaints</a>
            <!--<a href=Register.html">Citizen Register</a>
            <a href="Login.jsp">LOGIN</a>-->

            

               
            
            <a href="changepasss.jsp" >Change Password</a>
            
        </div>
              

<%
%>


           
    </body>
</html>
