private
baseFileNameFor: aFileName
	^ aFileName allButLast: (aFileName size) - (aFileName lastIndexOf: $.) + 1