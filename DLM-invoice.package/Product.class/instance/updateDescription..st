accesing
updateDescription: aString
	"update name to aString"

	(self class  descriptionIsValid: aString)
		ifTrue: [ description := aString ]
		ifFalse: [ Error signal: 'invalid product description' ]