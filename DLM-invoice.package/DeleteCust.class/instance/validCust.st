private-validation
validCust
	"answer whether cust id is valid"

	cust ifNil: [ ^ false ] ifNotNil: [ ^ true ]