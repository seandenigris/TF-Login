as yet unclassified
renderContentOn: html

		html script: ('$(".logindialog").dialog("option", "title", "Login");').
		super renderContentOn: html.
		