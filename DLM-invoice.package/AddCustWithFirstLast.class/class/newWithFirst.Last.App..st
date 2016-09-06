instance creation
newWithFirst: aFirstNameString Last: aLastNameString App: anApp
	"creates new addCustWithFirstLast command with provided info"

	^ self new initializeWithFirst: aFirstNameString Last: aLastNameString App: anApp