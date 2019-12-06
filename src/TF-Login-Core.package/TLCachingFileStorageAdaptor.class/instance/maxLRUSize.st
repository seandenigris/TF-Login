as yet unclassified
maxLRUSize
	^ maxLRUSize ifNil: [ ^ self defaultMaxLRUSize ]