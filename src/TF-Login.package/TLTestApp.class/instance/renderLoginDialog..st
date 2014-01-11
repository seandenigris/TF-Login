as yet unclassified
renderLoginDialog: html
	(html div)
		class: 'logindialog';
		script: ((html jQuery new dialog)
			title: 'Pop-up login';
			width: '540px';
			resizable: false;
			autoOpen: true;
			modal: false);
		with: [
			html render: ajaxLoginComponent  ]