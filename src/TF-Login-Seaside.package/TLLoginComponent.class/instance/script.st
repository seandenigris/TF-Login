javascript
script
	^ (self allowEmptyPassword
		ifFalse: [
			'function enableLoginButton() {
				if (document.getElementById("loginbtn") != null) {
					document.getElementById("loginbtn").disabled = (
						document.getElementById("loginuser").value == "" ||
						document.getElementById("loginpswd").value == "" )
				}
			}	
			function enableResetButton() {
				if (document.getElementById("resetbtn") != null) {
					document.getElementById("resetbtn").disabled = (
						document.getElementById("resetpswduser").value == "" ||
						document.getElementById("resetpswd").value == "" ||
						document.getElementById("resetpswdconfirm").value == "" );
				}
			}
			']
		ifTrue: [
			'function enableLoginButton() {
				if (document.getElementById("loginbtn") != null) {
					document.getElementById("loginbtn").disabled = (
						document.getElementById("loginuser").value == "" );
				}
			}	
			function enableResetButton() {
				if (document.getElementById("resetbtn") != null) {
					document.getElementById("resetbtn").disabled = (
						document.getElementById("resetpswduser").value == "" ||
						document.getElementById("resetpswd").value !=
							document.getElementById("resetpswdconfirm").value);
				}
			}
			'])
	