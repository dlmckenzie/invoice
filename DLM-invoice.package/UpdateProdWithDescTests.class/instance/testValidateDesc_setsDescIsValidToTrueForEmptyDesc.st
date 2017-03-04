testing - edge cases
testValidateDesc_setsDescIsValidToTrueForEmptyDesc
	"test that validateDesc sets descIsValid to true for an empty description"

	self
		assert: [ (UpdateProdWithDesc newWithProd: 'A' Desc: '') descIsValid ]
		description: 'descIsValid should be true for an empty string product description'