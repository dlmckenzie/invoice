validation
validCust
	"answer whether cust id is valid"

	(Application customers retrieveByID: id) ifNotNil: [ ^ true ] ifNil: [ ^ false ]