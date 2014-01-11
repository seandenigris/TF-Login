public
fileNamesDo: aOneArgBlock
	rw sharedRead: [
		self dirlist values do: [ :dir |
			dir fileNames do: aOneArgBlock]]
