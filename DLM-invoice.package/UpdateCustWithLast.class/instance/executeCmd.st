action
executeCmd
	"execute the command"

	self validate.
	validArguments
		ifTrue: [ cust name last: last.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult