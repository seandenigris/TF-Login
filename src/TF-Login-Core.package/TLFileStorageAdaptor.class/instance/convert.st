private
convert

	| d dlist found |
	dlist := Dictionary new.
	d := db storageDirectory.
	found := false.
	d fileNames do: [ :fn |
		| u nfn v  |
		(fn select: [ :c | c = $- ]) size = 1 ifTrue: [
			found := true.
			v := fn allButFirst: (fn lastIndexOf: $.).
			u := ReferenceStream readOnlyFileNamed: (d fullNameFor: fn) do: [ :f | f next ].
			nfn := (WriteStream on: String new)
				nextPutAll: u userId; 
				nextPut: $-;
				nextPutAll: u username asLowercase base36Encoded;
				nextPut: $-;
				nextPutAll: u email asLowercase base36Encoded;
				nextPut: $.;
				nextPutAll: v;
				contents.
			ReferenceStream
            		newFileNamed: (d fullPathFor: nfn)
            		do: [ :f | f nextPut: u; flush ].
			d deleteFileNamed: fn ]].
	
	found ifTrue: [ db initialize ]