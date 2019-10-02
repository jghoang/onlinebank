<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Checking Account Home</title>
    <meta name="description" content="This is the main page of checking acocunt">
    <link rel="stylesheet" type="text/css" href="/css/styleCheckingSaving.css">
</head>

<body>
    <nav class="headernav">
        <div id="header" style="height: 90px;">
            <div id="headerleft"><img src="https://i.ibb.co/ctc8qGX/logo.png" style="width: 100px;"></div>
            <div id="nav1"><a href="">Saving Accounts</a></div>
            <div id="nav1"><a href="">Home</a></div>
            <div id="nav1"><a href="">About Team3</a></div>
        </div>
    </nav>
    <div id="mainbox">
        <div id="uppermain" align="center">
            <div id="photo"><img src="https://i.ibb.co/5hSxn1H/chekinglogo.png"></div>
            <div id="info">
                <h1 id="title">Checking Accounts</h1>
<<<<<<< HEAD
                <h2> id="welcome">Welcome c:out value="${currentUser.username}",</h2>
=======
                <h3 id="welcome">Welcome <c:out value="${currentUser.username}"></c:out></h3>
>>>>>>> a085a3f8324b102d41b7c1b560e268dc1bd5c91d
                <h3>Please Select your Account</h3>

            </div>
        </div>

        <section id="upperdown" align="center">
            <div id="leftBox">
                <div class="SubText">
                    <h1 class="boxTitle" align="center">Personal Checking</h1>
                    <img src="https://www.pbtc.net/uploads/userfiles/files/images/iStock_000005788358Small.jpg" alt="Personal Checking">
                    <section align="center">
                        <p>Balance: ----------</p><br>

                        <button onclick="window.location.href = 'https://MeritAmerica.com';" class="button">Last Activities</button>
                        <button onclick="window.location.href = 'https://MeritAmerica.com';" class="button">Close Account</button>
                        <button onclick="window.location.href = 'https://MeritAmerica.com';" class="button">Create new Account</button>

                    </section>


                </div>

            </div>

            <div id="BCheck">
                <div class="SubText">
                    <h1 class="boxTitle" align="center">DBA</h1>
                    <img src="https://www.freshbooks.com/blog/wp-content/uploads/2013/05/doing-business-as-852x568.jpg" alt="DBA">
                    <section align="center">
                        <p>Balance: ----------</p><br>
                        <button onclick="window.location.href = 'https://MeritAmerica.com';" class="button">Last Activities</button>
                        <button onclick="window.location.href = 'https://MeritAmerica.com';" class="button">Close Account</button>
                        <button onclick="window.location.href = 'https://MeritAmerica.com';" class="button">Create new Account</button>
                    </section>
                </div>

            </div>
        </section>

    </div>
    <div id="footer">
        <p>MeritAmerica | Team3</p>
        <p><img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" alt="github"> <a href="">Github link of this project</a>
    </div>
</body>

</html>