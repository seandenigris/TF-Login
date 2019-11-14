as yet unclassified
name: aString
	"Makes sure there is only one storage adaptor per application. This eliminates
	concurrency and locking issues."
	^ (StorageAdaptorsByName ifNil: [ StorageAdaptorsByName := Dictionary new])
		at: aString ifAbsent: [
			StorageAdaptorsByName at: aString put: ((self basicNew)
				initialize: aString;
				yourself)] 
		