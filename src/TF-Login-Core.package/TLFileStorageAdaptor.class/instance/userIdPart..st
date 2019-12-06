private
userIdPart: aFileName
	^ aFileName first: (aFileName indexOf: $-) - 1
