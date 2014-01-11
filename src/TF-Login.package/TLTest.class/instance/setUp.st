as yet unclassified
setUp

	self useZincServer
		ifTrue: [
  	     		self server: (self seasideAdaptorClass port: 12345) start.
       		self assert: (self server isRunning ) description: 'This test needs a Seaside server.'.].


	self assert: ((Smalltalk at: #Soup ifAbsent: [nil]) isNil not) description: 'This test requires Soup: http://www.squeaksource.com/Soup'.
	self assert: ((Smalltalk at: #ZnClient ifAbsent: [nil]) isNil not) description: 'This test requires Zinc http://www.squeaksource.com/ZincHTTPComponents'.
	
	"Gofer it
  		squeaksource: 'Soup';
  		package: 'Soup';
  		load"

	"Gofer it
  		squeaksource: 'ZincHTTPComponents';
  		package: 'Zinc-HTTP';
  		package: 'Zinc-Seaside';
  		load"
	
	"TLCachingFileStorageAdaptor initialize."
	TLTester testing: true.
	TLTester initialize.
	TLTester sendRegistrationConfirmationEmail: false.
	TLTester confirmationTimeoutMinutes: 10.
	TLTester setPasswordValidator: false.
	TLTester allowEmptyPasswords: false.
	(TLCachingFileStorageAdaptor name: TLTester appName) deleteDatabase. 
	TLAuthenticationManager initialize.
	client := (ZnClient new).
	client timeout: 10.

	 