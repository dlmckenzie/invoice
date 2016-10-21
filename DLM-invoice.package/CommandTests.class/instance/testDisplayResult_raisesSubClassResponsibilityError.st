testing - exceptions
testDisplayResult_raisesSubClassResponsibilityError
	"test method raises error, as this is an abstract class method"

	self should: [ Command new executeCmd ] raise: Error