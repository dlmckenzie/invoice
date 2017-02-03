action
executeCmd
	"execute the cmd to add the product"

	self validate isValid
		ifTrue: [ prod := Product newWithKey: key.
			prod
				updateDescription: desc;
				updatePrice: price.
			Application products addProd: prod.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult