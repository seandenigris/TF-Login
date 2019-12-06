accessing
addSubdirectoriesTo: aDirectory
	
	aDirectory fileNames do: [ :each |
		self directoryFor: each depth: 1 from: aDirectory ]