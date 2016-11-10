action
executeCmd
	"execute the command"

	validArguments
		ifTrue: [ 
			Application customers delete: cust.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult