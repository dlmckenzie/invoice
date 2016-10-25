private-validation
validate
	validArguments := true.
	self validateCust.
	cust ifNotNil: [ self validateLast ]