action
executeCmd
	"execute the command to delete the product"

	self validate isValid
		ifTrue: [ Application products delete: prod.
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult 