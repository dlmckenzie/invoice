private - validation
validateCust
	"validate that cust exists for the id"

	(Application domain customers custExistsForID: id)
		ifTrue: [ cust := Application domain customers retrieveByID: id ].
	cust
		ifNil: [ validationError := 'Invalid cust id'.
			isValid := false ]
		ifNotNil: [ origFirst := cust name first ]