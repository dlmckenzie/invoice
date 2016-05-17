as yet unclassified
firstIsValidForUpdate: aString
	"answer true/false as to whether aString is a valid update to customer's name"

	(Customer firstIsValidForIdentity: aString)
		ifTrue: [ 
			first = aString
				ifTrue: [ ^ false ]
				ifFalse: [ ^ true ] ]
		ifFalse: [ ^ false ]