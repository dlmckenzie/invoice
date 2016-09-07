instance creation
newWithFirst: aFirstNameString Last: aLastNameString
	"creates new addCustWithFirstLast command with provided info"

	^ self new initializeWithFirst: aFirstNameString Last: aLastNameString