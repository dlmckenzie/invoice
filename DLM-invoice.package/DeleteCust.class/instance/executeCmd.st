action
executeCmd
	"execute the command"

	| cust |
	self validate.
	validationFailureReason isNil
		ifTrue: [ cust := Application customers retrieveByID: id.
			Application customers delete: cust.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult