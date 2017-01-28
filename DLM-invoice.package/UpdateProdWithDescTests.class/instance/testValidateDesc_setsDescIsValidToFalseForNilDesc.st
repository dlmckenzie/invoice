testing - edge cases
testValidateDesc_setsDescIsValidToFalseForNilDesc
	"test that validateDesc sets descIsValid to false for a nil product description"

	self
		deny: [ (UpdateProdWithDesc newWithProd: 'A' Desc: nil) validateDesc descIsValid ]
		description: 'descIsValid should be false for a nil description'