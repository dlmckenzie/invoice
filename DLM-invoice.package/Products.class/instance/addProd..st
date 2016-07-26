collection ops
addProd: aProduct
	"add product to myself"

	(self keyIsUnique: aProduct key)
		ifTrue: [ self at: aProduct key put: aProduct ]
		ifFalse: [ Error signal: 'duplicate key' ].
	 ^ aProduct