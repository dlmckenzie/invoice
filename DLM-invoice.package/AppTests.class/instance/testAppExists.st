testing
testAppExists
	"test that the invoice application object exists"

	self assert: [ Smalltalk hasClassNamed: #App ] description: 'InvoiceApp object does not exist'