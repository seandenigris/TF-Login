as yet unclassified
renderContentOn: view

	view div
		class: 'hdr';
		with: 'Login Test App'.

		self renderStats: view.
		self renderPrefs: view.
		self renderTestConfirmation: view.
		self session user isNil 
			ifTrue: [
				self popup
					ifFalse: [
						self renderPopupTestButton: view.
						view render: loginComponent ]
					ifTrue: [
						self renderLoginDialog: view.
						self popup: false ]]
			ifFalse: [
				self editingAccount
				ifTrue: [
					self renderAccountEditor: view ]
				ifFalse: [
					self renderLoggedInContent: view]]

		
		
	
