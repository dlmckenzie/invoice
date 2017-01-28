testing - happy path
testValidateDesc_setsDescIsValidToTrueForValidDesc
	"test that validateDesc sets descIsValid to true for a valid product description"

	| app cli prod |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	prod := Product newWithKey: 'A'.
	prod updateDescription: 'Part A'.
	app products addProd: prod.
	self
		assert: [ (UpdateProdWithDesc newWithProd: 'A' Desc: 'New Part A') descIsValid ]
		description: 'descIsValid should be true'