private
userForUsernameUnsynchronized: username
	| encUsername |
	encUsername := self encodeUsername: username asLowercase.
	(db fileNamesMatching: '*-', encUsername , '-*')
		do: [ :each |
			^ db restoreObjectNamed: (self baseFileNameFor: each) ].			
	^ nil