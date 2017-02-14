action
executeCmd
	"execute command"

	isValid
		ifTrue: [ prod updatePrice: newProd price.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult 