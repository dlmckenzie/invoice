validation
lastIsValidForIdentity: aString
	"validate last name is valid to identify customer"
	
	aString isString
		ifFalse: [ ^ false ]
		ifTrue: [ 
			aString isEmptyOrNil 
				ifTrue: [ ^ false ]
				ifFalse: [ 
					(aString includesSubstring: ',')
						ifTrue: [ ^ false ]
						ifFalse: [ ^ true ] ] ]