action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ cust name first: first.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult