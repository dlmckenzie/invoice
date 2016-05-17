testing
testDeleteWithInvalidIDRaisesError
	"comment stating purpose of message"
	
	| customers |
	customers := Customers new.
	self should: [ customers delete: -1] raise: Error.