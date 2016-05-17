accesing
correctKey: aProductKeyString
	"update key to aProductKeyString"
	
	(Product keyIsValidForIdentity: aProductKeyString )
		ifTrue: [ key := aProductKeyString ]
		ifFalse: [ Error signal: 'invalid product key' ]