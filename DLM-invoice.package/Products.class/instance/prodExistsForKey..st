validation
prodExistsForKey: aProductKeyString
	"answer boolean cooresponding to whether product with specified key exists"

	^ (self includesKey: aProductKeyString)