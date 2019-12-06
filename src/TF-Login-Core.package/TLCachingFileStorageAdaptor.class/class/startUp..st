as yet unclassified
startUp: isComingUp
   
	 isComingUp ifTrue: [
		StorageAdaptorsByName isNil ifFalse: [
			StorageAdaptorsByName valuesDo: [ :each | each clearCache ]].
		StorageAdaptorsByName := nil]