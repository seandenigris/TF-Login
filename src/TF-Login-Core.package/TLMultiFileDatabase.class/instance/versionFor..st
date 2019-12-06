private
versionFor: aFileName
	^ ((aFileName basename trimBoth: [ :c | c = $' ])  allButFirst: (aFileName basename lastIndexOf: $.)) asInteger