validation
validate
	"validate customer name"

	self validateFirst.
	self validateLast.
	isValid := (firstIsValid and: lastIsValid )