collection ops
addProd: aProduct
	"add product to myself"

	(self prodExistsForKey: aProduct key) not
		ifTrue: [ self at: aProduct key put: aProduct ]
		ifFalse: [ Error signal: 'duplicate product key' ].
	^ aProduct