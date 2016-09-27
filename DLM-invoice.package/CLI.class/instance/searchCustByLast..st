interface - customer
searchCustByLast: aSearchString
	
	"list customers whose last names match or contain the search string"

	(SearchCustByLast newWithLast: aSearchString) executeCmd