testing - happy path
testValidateDesc_setsDescIsValidToTrueForValidDesc
	"test that validateDesc sets descIsValid to true for a valid product description"

	self
		assert: [ (UpdateProdWithDesc newWithProd: 'A' Desc: 'New Part A') descIsValid ]
		description: 'descIsValid should be true'