instance creation
newWithProd: aProductKeyString Desc: aProductDescriptionString
	"creates a new instance of the command"

	^ self new initializeWithProd: aProductKeyString Desc: aProductDescriptionString

	