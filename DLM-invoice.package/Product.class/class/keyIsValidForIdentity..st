validation
keyIsValidForIdentity: aProductKeyString
	"validate that product key is valid to identify prduct"

	aProductKeyString isString
		ifFalse: [ ^ false ]
		ifTrue: [ 
			aProductKeyString isEmptyOrNil
				ifTrue: [ ^ false ]
				ifFalse: [ ^ true ] ]