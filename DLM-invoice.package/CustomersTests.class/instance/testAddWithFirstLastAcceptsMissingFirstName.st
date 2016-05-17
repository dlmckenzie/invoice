testing
testAddWithFirstLastAcceptsMissingFirstName
	"First name is optional"

	| customers |
	customers := Customers new.
	self shouldnt:  [ customers addWithFirst: '' Last: 'Smith'. ] raise: Error.