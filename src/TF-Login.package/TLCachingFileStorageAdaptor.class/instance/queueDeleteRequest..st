as yet unclassified
queueDeleteRequest: aUser
	"Must be invoked from within lock critical:."
	self queue add: (Association key: #DeleteUser value: aUser).
	self processing ifFalse: [
		processing := true.
		self processQueue ]