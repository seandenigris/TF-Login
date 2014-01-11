as yet unclassified
findForm: aString
	^ (Soup fromString: aString) findTag: 'form'

