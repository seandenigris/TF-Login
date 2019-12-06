rendering
renderApplicationProperties: user on: html
	user applicationProperties keysSortedSafely
		do: [ :k | 
			| v |
			v := user applicationProperties at: k.
			((v isKindOf: TLApplicationPropertyItem) and: [ v includeInAccountDetails])
				ifTrue: [ 
					html
						tableRow: [ 
							html tableData: k , ': '.
							html tableData: v ] ] ]