action
executeCmd
	"execute the cmd"

	validArguments
		ifTrue: [ Application products addProd: (Product newWithKey: 'A100').
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult