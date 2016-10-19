action
executeCmd
	"execute the command"

	self validate.
	validArguments
		ifTrue: [ cust name first: first.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult

