rendering
renderContentOn: html
	emailResult
		ifNotNilDo: [ :result | 
			self renderConfirmationOn: html.
			^ self ].
	self renderFormOn: html