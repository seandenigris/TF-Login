private
baseFileNameFor: aFileName
	^ aFileName basename allButLast: (aFileName basename size) - (aFileName basename lastIndexOf: $.) + 1