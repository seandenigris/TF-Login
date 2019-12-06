public
fileNames
	| list |
	list := OrderedCollection new.
	rw sharedRead: [
		self dirlist values do: [ :dir |
			list addAll: (dir fileNames)  ]].
	^ list