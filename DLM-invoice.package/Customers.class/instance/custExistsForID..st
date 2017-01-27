validation
custExistsForID: aCustomerIDInteger
	"answer boolean cooresponding to whether customer with specified ID was found"

	^ self includesKey: aCustomerIDInteger