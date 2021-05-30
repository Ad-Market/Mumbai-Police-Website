<%-- 
    Document   : index
    Created on : 13 Feb, 2019, 9:39:01 AM
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
    <script>
        HttpSession hs1 = request.getSession(false);
                String user = (String)hs1.getAttribute("name");
               // String msg = "logged in as " + user;
        out.print("<h2 style='margin-left:900px'>" + msg + "</h2>");



    </script>
    

</head>
<body>

    <div class="row">
        <div class="leftcolumn">
            <div class="card">
                <h2>Current News</h2>
                <h4>
06 February 2019 Current Affairs: Kala Ghoda festival, India’s largest multi-cultural street festival begins in Mumbai to celebrate its 20 years of art and culture through cinema, theatre, dance, literature, and sculpture.

Maneck Davar is Chairman of Kala Ghoda Association.

The festival hosted the exhibition at the Jehangir Art Gallery to celebrate the 150th birth anniversary of Mahatma Gandhi and some rich history of Mumbai.</h4>
                <div class="fakeimg" class="slideshow-container" style="height:500px;">
                    <div class="slideshow-container"  width="100">

            <div class="mySlides fade"  width="100">
                <div class="numbertext">1 / 3</div>
                <a href="https://www.hellotravel.com/events/kala-ghoda-arts-festival"> <img src="img1.jpg" height="400px" style="width:100%"></a>
              <div class="text">Kala Ghoda Arts Festival, is the country's largest multicultural festival, 
                    created to draw attention to the unique and beautiful areas in Mumbai.
                    This Festival draws visitors in large numbers, not just from the city but from all over the country and around the world.
                    Today, the area has institutions like the Jehangir Art Gallery, Max Mueller Bhavan, Bombay University,
                    Elphinstone College, and David Sassoon Library around it. It is one of the most awaited Art Festivals from this 
                    part of the country.</div>
            </div>

            <div class="mySlides fade" width="100">
                <div class="numbertext">2 / 3</div>
                <a href="https://www.vogue.in/content/kala-ghoda-festival-2019-dates-schedule-event-calendar-location-details/">
                    <img src="img2.jpg" height="400px" style="width:100%"></a>
                <div class="text"></div>
            </div>

            <div class="mySlides fade"  width="100">
                <div class="numbertext">3 / 3</div>
                <a href="https://www.freepressjournal.in/featured-blog/kala-ghoda-arts-festival-2019-activities-events-and-schedule-for-kids-you-just-cant-miss/1449821">
                    <img src="img5.jpg" height="400px" style="width:100%"></a>
                <div class="text">Caption Three</div>
            </div>

        </div>
                    
        <br>

        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
        </div>
<script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1;
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>
                
                </div>
            </div>

        </div>
        <div class="rightcolumn">
            <div class="card">
                <h2>About Me</h2>
                <div class="fakeimg" style="height:100px;">Image</div>
                <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
            </div>
            <div class="card">
                <h3>Popular Post</h3>
                <div class="fakeimg"><p>Image</p></div>
                <div class="fakeimg"><p>Image</p></div>
                <div class="fakeimg"><p>Image</p></div>
            </div>
            <div class="card">
                <h3>Follow Me</h3>
                <p>Some text..</p>
            </div>
        </div>
    </div>

</body>
</html>