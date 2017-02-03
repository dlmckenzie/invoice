private - validation
validateCust
	"validate that cust exists for the id"

	(Application customers custExistsForID: id)
		ifTrue: [ cust := Application customers retrieveByID: id ].
	cust
		ifNil: [ validationError := 'Invalid cust id'.
			isValid := false ]
		ifNotNil: [ origFirst := cust name first ]