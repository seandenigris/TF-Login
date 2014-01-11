as yet unclassified
pendingActions
	"Answer the pending actions list for our appName."

	^ PendingActions at: self appName ifAbsentPut: [ Dictionary new ]