public
storageDirectoryName
	^ storageDirectoryName ifNil: [ storageDirectoryName := self name ].
