rendering
renderContentOn: html
	emailResult
		ifNotNil: [ :result | 
			self renderConfirmationOn: html.
			^ self ].
	self renderFormOn: html