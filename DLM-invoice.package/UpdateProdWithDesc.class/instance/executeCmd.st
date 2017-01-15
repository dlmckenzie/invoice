action
executeCmd
	"execute the command"

	validArguments
		ifTrue: [ prod updateDescription: newProd description.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult