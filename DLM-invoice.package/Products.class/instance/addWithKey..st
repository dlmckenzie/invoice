collection ops
addWithKey: aString
	"add product to myself"

	(self keyIsUnique: aString)
		ifTrue: [ self at: aString put: (Product newWithKey: aString) ]
		ifFalse: [ Error signal: 'duplicate key' ]

