instance creation
newWithName: aName
	"answers new customer"

	^ self new initializeWithID:(self generateNextID ) Name: aName