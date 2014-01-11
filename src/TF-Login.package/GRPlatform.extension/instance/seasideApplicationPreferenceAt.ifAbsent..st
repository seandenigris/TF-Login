*TF-Login-seaside-override
seasideApplicationPreferenceAt: aKey ifAbsent: aBlock
		
	^ [WACurrentRequestContext value application preferenceAt: aKey] "in a Seaside context"
		"on: WARequestContextNotFound, WAAttributeNotFound"
		on: Exception 
		do: [:ex | aBlock value] "not in a Seaside context, treat as absent"