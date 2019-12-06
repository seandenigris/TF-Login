as yet unclassified
script
	^
		self allowEmptyPassword
			ifTrue: [
				'function enableOkButton() {
					document.getElementById("editacctokbtn").disabled = (
						document.getElementById("editacctusername").value == "" ||
						document.getElementById("editacctemail").value == ""
						);
			}']
			ifFalse: [
				'function enableOkButton() {
					document.getElementById("editacctokbtn").disabled = (
						document.getElementById("editacctusername").value == "" ||
						document.getElementById("editacctemail").value == "" ||
						document.getElementById("editacctpswd").value == ""
						);
				}']
