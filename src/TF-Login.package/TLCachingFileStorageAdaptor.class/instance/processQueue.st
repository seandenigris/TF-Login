as yet unclassified
processQueue
	"process the write queue until there are no more requests."
	backgroundProcess := (
	[	| assoc go dispatch |
		dispatch := (Dictionary new)
			at: #SaveUser 		put: [ :user | super saveUser: user ];
			at: #DeleteUser 	put: [ :user | super deleteUserUnsynchronized: user ];
			at: #DeleteDb 		put: [ :ignored | super deleteDatabaseUnsynchronized ];
			yourself.
		go := true.	
		[
			[ go ] whileTrue: [
				lock critical: [ assoc := queue removeFirst ].
				rw exclusiveWrite: [
					(dispatch at: assoc key) value: assoc value ].
				lock critical:  [
					(go := queue size > 0)]]]
		ensure: [
			processing := false ]] forkAt: Processor userBackgroundPriority named: 'TLCachingFileStorageAdaptor')