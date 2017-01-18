action
executeCmd
	"execute the command"

	validArguments
		ifTrue: [ cust name last: (newCust name last).
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult