validation
firstIsValidForUpdate: aString
	"answer true/false as to whether aString is a valid update to customer's name"

	(self class firstIsValidForIdentity: aString)
		ifTrue: [ first = aString
				ifTrue: [ ^ false ]
				ifFalse: [ ^ true ] ]
		ifFalse: [ ^ false ]