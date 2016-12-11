testing - edge cases
testValidate_setsValidArgumentsToFalseWhenReferencedByInvoice
	"test that validate sets valid arguments to false when a product is referenced to an invoice"
	
	self assert: [ false ] description: 'validate should have answered false when product is tied to invoice'