validation
validateCust
	"comment"

	cust := Application customers retrieveByID: id.
	cust
		ifNil: [ validationFailureReason := 'Invalid cust id'.
			validArguments := false ]
		ifNotNil: [ origFirst := cust first ]