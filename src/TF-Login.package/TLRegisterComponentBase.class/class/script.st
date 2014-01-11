as yet unclassified
script

	^'
	function enableRegisterButton() {
		if (document.getElementById("registeruser") != null) {
			document.getElementById("registerbtn").disabled = (
				document.getElementById("registeruser").value == "" ||
				document.getElementById("registerpswd").value == "" ||
				document.getElementById("registeremail").value == "");
		}
	}'