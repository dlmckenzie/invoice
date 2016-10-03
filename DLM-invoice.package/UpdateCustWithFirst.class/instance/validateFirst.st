validation
validateFirst
	"comment"

	self validFirstName 
		ifTrue: [ validationFailureReason := 'Invalid first name' ]