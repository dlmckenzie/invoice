interface - customer
deleteCust: aCustID
	"deletes cust corresponding to ID"

	(DeleteCust newWithID: aCustID) executeCmd