rendering
renderPasswordResetForm: html
	| warned |
	warned := false.
	(html form)
		class: 'passwordresetform';
		onKeyUp: 'enableResetButton();';
		script: 'document.getElementById("resetpswduser").focus();';
		with: [ 
			self renderPasswordResetFormContent: html ]