private - validation
validateCust
	"comment"

	cust := Application customers retrieveByID: id.
	cust
		ifNil: [ validationError := 'Invalid cust id'.
			validArguments := false ]
		ifNotNil: [ origFirst := cust name first ]