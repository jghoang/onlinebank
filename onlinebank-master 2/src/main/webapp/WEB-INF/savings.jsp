<jsp:include page="includes/header.jsp" />

<div class="row">
		<div class="col-12 col-s-10">
			<div class="rates" style="background-image: linear-gradient( #61d6a5 30%, #55b2c4 70%); min-height: 450px">
				<img src="/img/savings.png" alt="pig" style="max-height:450px; width: 50%; float: left">
				<div id="cdinfo">
				
					<h1>Save or grow your money with our:</h1> 
					
					<span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"> </span> 5.0 (7,000 Reviews)
                <h2>Online Savings Account or</h2>
					<h2> High Yield Certificate of Deposit(CDs)</h2>
					<p>please select to see different APY</p>
					<button class="js-button default-button"
						data-description="Annual Percentage Yield 2.35%"
						onclick="myRates(this)">1 year</button>
					<button class="js-button default-button"
						data-description="Annual Percentage Yield 2.40%"
						onclick="myRates(this)">3 years</button>
					<button class="js-button default-button"
						data-description="Annual Percentage Yield 2.45%"
						onclick="myRates(this)">5 years</button>
					<div id="js-description" class="description"></div>
					<h3>Maximize your earnings. Period. It's time to step up your savings game. </h3>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12 col-s-12">
			<h1 style="text-align:center;">Calculate your future earnings</h1>
			<form class="form-inline" style="text-align: center">
				<label for="Amount">Opening Deposit:</label> <input type="number"
					placeholder="please enter amount..." id="p"> <label
					for="apr">Interest Rate:</label> <input type="number"
					placeholder="please enter APY..." id="r"> <label
					for="terms">Terms:</label> <input type="number"
					placeholder="please enter years..." id="n"> <input
					type="reset"> <input type="button" onclick="calculate()"
					value="Calculate" style="background-color:#61d6a5">
			</form>
			<p id="result"></p>
		</div>
	</div>
	
	<div class="row">
		<div class="details col-12">
			<h2>The Basics</h2>
			<table>
			<tr>
				<td>
					<i class="fas fa-mobile-alt fa-2x"></i>
					<p>Digital banking tools. It’s easy to bank anytime, anywherewith the Ally Mobile app.</p>
				</td>
				<td>
					<i class="far fa-check-square fa-2x"></i>
					<p>Your money, FDIC-insured. Deposits are insured by the FDIC up to the maximum allowed by law.</p>
				</td>
				<td>
					<i class="fas fa-ban fa-2x"></i>
					<p>No monthly maintenance fees. Don’t expect any sneaky monthly maintenance fees with us.</p>
				</td>
				<td>
					<i class="fas fa-exclamation fa-2x"></i>
					<p>No minimum opening deposit. Open an account with no minimum balance requirement.</p>
				</td>
			</table>
		</div>
	</div>

<jsp:include page="includes/footer.jsp" />

