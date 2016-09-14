instance creation
newWithFirst: aFirstNameString Last: aLastNameString
	"Answers a new addCustWithFirstLast command instance with provided info"

	^ self new initializeWithFirst: aFirstNameString Last: aLastNameString