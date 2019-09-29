<jsp:include page="includes/header.jsp" />

	<script>
        alert("Hello, \n Welcome to Merit America Banking Services \n DISCLAIMER: \n This is the Demo Version of banking application ");
     </script>


    <div class="row">
        <div class="col-9 col-s-12">
            <h1>Welcome to Merit America Online Bank!</h1>
            <span class="dot1"></span>
            <span class="dot2"></span>
            <span class="dot3"></span>
            <span class="dot4"></span>
        </div>

        <div class="col-3 col-s-12">
            <div class="login-form">
                <h2>Sign In</h2>
                <p>to see your account</p>
                <form action="/showUser" method="POST">
                    <p>
                        <input type="text" id="email" name="email" placeholder="Email" />
                    </p>
                    <p>
                        <input type="password" id="password" name="password" placeholder="Password" />
                    </p>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <input type="submit" value="Sign In" />
                </form>
                <br>
                <p>Don't have an account? <span class="enroll"><a href="/user/new">Enroll Today!</a></span></p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="section-mid col-s-12">
            <div class="box">
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <h3>See how rewarding online banking with Merit can be!</h3>
                <p>Enroll today and build a better financial future </p>

                <ul>
                    <li>Checking</li>
                    <li>DBAs</li>
                    <li>Savings</li>
                    <li>CDs</li>
                    <li>IRAs</li>
                </ul>

            </div>
        </div>


    </div>
    <div class="row">
        <div class="section-bottom col-12 ">
            <h4>DISCLAIMER: This is not a real bank.</h4>
            <h5>INVESTMENTS: </h5>
            <table class="col-12 frontpage">
                <tr>
                    <td>Are Not Insured by Any Federal Government Agency</td>
                    <td>Are Not a Condition to Any Banking Service or Activity</td>
                </tr>
                <tr>
                    <td>Are not FDIC insured</td>
                    <td>Are not Bank Guaranteed</td>
                </tr>
                <tr>
                    <td>May Lose Value</td>
                    <td>Are not Deposits</td>
                </tr>
            </table>

        </div>

    </div>

<jsp:include page="includes/footer.jsp" />
