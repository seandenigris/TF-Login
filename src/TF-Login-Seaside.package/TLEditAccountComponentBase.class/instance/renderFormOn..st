rendering
renderFormOn: html
	| user |
	user := self initializeFormValues.
	user
		ifNil: [ self renderNoUserOn: html]
		ifNotNil: [
			(html form)
				class: 'editaccountform';
				onKeyUp: 'enableOkButton()';
				script: 'enableOkButton()';
				with: [ self renderFormContentFor: user on: html ]]