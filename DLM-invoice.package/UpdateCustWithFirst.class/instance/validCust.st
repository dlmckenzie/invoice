validation
validCust
	"answer whether cust id is valid"

	(Application customers retrieveByID: cust id) ifNotNil: [ ^ true ] ifNil: [ ^ false ]