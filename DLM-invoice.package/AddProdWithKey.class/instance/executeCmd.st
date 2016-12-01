action
executeCmd
	"execute the cmd"

	validArguments
		ifTrue: [ Application products addProd: (Product newWithKey: key).
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult