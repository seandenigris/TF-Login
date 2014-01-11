private
lastEntryNamed: aString
    | lastEntry |
    lastEntry := self lastSavedFileNamed: aString.
    lastEntry ifNil: [ ^ nil ].
"    ^ ReferenceStream
        readOnlyFileNamed: ((self directoryFor: aString) fullNameFor: lastEntry)
        do: [ :f | f next ]"
	^ (FLMaterializer materializationFromFileNamed: ((self directoryFor: aString) fullNameFor: lastEntry)) root
