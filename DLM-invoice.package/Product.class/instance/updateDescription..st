accesing
updateDescription: aString
	"update name to aString"
	
	(self nameIsValid: aString )
		ifTrue: [ name := aString ]
		ifFalse: [ Error signal: 'invalid product name' ]