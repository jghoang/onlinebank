
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

	if (document.URL.search("about") > 0) {
		var el = document.querySelector("a[href='/about']");
	} else if (document.URL.search("checking") > 0) {
		var el = document.querySelector("a[href='/checking']");
	} else if (document.URL.search("savings") > 0) {
		var el = document.querySelector("a[href='/savings']");
	} else if (document.URL.search("invest") > 0) {
		var el = document.querySelector("a[href='/invest']");
	} else if (document.URL.search(":8080/$") > 0) {
		var el = document.querySelector("#home");
    }
	el.classList.add("active");
    
</script>

</body>

</html>