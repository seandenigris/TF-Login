private
versionFor: aFileName
	^ ((aFileName trimBoth: [ :c | c = $' ])  allButFirst: (aFileName lastIndexOf: $.)) asInteger