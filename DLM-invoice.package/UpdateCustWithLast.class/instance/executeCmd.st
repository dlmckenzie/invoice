action
executeCmd
	"execute the command"

	validArguments
		ifTrue: [ cust name last: last.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult