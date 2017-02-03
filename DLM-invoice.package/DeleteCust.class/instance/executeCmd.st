action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ 
			Application customers delete: cust.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult