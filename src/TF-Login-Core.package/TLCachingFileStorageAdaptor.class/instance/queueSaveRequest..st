as yet unclassified
queueSaveRequest: aUser
	"Must be invoked from within lock critical:"
	self queue add: (Association key: #SaveUser value: aUser).
	self processing
		ifFalse: [
			processing := true.
			self processQueue ]
