interface - product
searchProdByDesc: aProductDescriptionString
	"list products whose description contains the search string"
	
	(SearchProdByDesc newWithDesc: aProductDescriptionString ) executeCmd 
	