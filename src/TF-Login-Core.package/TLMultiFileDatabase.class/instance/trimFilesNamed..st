private
trimFilesNamed: aString

    | filenames versionsToKeep dir |
    dir := self directoryFor: aString.
    versionsToKeep := self maxEntryCount.
    filenames := dir filesMatching: (self matchBlock value: aString).
    filenames size < versionsToKeep ifTrue: [ ^ self ].
    ((filenames sort: [ :a :b | (self versionFor: a) < (self versionFor: b) ])
        allButLast: versionsToKeep)
            do: [ :each | each delete ]
