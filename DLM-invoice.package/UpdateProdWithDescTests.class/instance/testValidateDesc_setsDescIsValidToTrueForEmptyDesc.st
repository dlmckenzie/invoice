testing - edge cases
testValidateDesc_setsDescIsValidToTrueForEmptyDesc
	"test that validateDesc sets descIsValid to true for an empty description"

	| app prod |
	app := App new start.
	AddProdWithKey initializeWithApp: app.
	prod := Product newWithKey: 'A'.
	prod updateDescription: 'part a'.
	app products addProd: prod.
	
	self assert: [ app products size = 1 ] description: 'Test setup failure'.
	self
		assert: [ (UpdateProdWithDesc newWithProd: 'A' Desc: '') descIsValid ]
		description: 'descIsValid should be true for an empty string product description'