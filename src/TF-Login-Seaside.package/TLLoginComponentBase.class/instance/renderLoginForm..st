rendering
renderLoginForm: html
	html form
		class: 'loginform';
		onKeyUp: ('enableLoginButton()');
		script: ('enableLoginButton(); document.getElementById("loginuser").focus();');
		defaultAction: [self login];
		with: [
			self renderLoginFormContent: html.]