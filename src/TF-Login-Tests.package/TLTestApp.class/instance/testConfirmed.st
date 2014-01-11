as yet unclassified
testConfirmed
	self session user ifNil: [ ^ false ].	
	^ self session user applicationProperties at: 'TestConfirmed' ifAbsent: [ false ]