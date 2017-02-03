action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ prod updateDescription: newProd description.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult