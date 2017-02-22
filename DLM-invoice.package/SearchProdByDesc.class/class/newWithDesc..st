instance creation
newWithDesc: aProductDescriptionString
	"Answer a new SearchProdByDesc command instance"
	
	^ self new initializeWithDesc: aProductDescriptionString