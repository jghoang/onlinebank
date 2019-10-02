
<div class="footer">
    <p>Merit America | Team 3</p>
    <a href="https://github.com/jghoang/onlinebank"><img
        src="/img/github.png" alt="git"></a>
    <p>[View our project on GitHub]</p>
</div>

<script>
	/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
	function myFunction() {
		var x = document.getElementById("myTopnav");
		if (x.className === "topnav") {
			x.className += " responsive";
		} else {
			x.className = "topnav";
		}
	}

	/* adds the active class to current page*/
	if (document.URL.search("about") > 0) {
		var el = document.querySelector("a[href='/about']");
	} else if (document.URL.search("checking") > 0) {
		var el = document.querySelector("a[href='/checking']");
	} else if (document.URL.search("savings") > 0) {
		var el = document.querySelector("a[href='/savings']");
	} else if (document.URL.search("invest") > 0) {
		var el = document.querySelector("a[href='/invest']");
    } else if (document.URL.search("user/new") > 0) {
        var el = document.querySelector("a[href='/user/new']");
	} else if (document.URL.search(":8080/$") > 0) {
		var el = document.querySelector("#home");
    }
	el.classList.add("active");

	/*toggles different cd apy */
	function myRates(elem) {
		var x = document.getElementById("js-description");
		var description = elem.getAttribute('data-description');
		x.innerHTML = description;

		var button = document.getElementsByClassName('js-button');

		for (var i = 0; i < button.length; i++) {
			button[i].classList.remove('active-button');
		}

		elem.classList.add('active-button');
	}

	/* rate calculator */
	function calculate() {
		p = document.getElementById("p").value;
		n = document.getElementById("n").value;
		r = document.getElementById("r").value;
		result = document.getElementById("result");

		result.innerHTML = "Estimated earnings is: $"
				+ (p * n * r / 100).toFixed(2);
	}
    
</script>

</body>

</html>