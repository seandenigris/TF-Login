rendering
renderContentOn: html

	html form
		class: 'registerform';
	 	onKeyUp: ('enableRegisterButton()');
		script: 'document.getElementById("registeruser").focus();';
	with: [
		self renderFormContent: html ]