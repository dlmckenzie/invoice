action
executeCmd
	"execute the command"

	validArguments
		ifTrue: [ cust name first: first.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult