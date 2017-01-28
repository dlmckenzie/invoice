testing - edge cases
testValidateDesc_setsDescIsValidToTrueForEmptyDesc
	"test that validateDesc sets descIsValid to true for an empty description"

	| app cli prod |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	prod := Product newWithKey: 'A'.
	prod updateDescription: 'Part A'.
	app products addProd: prod.
	self
		assert: [ (UpdateProdWithDesc newWithProd: 'A' Desc: '') descIsValid ]
		description: 'descIsValid should be true for an empty string product description'