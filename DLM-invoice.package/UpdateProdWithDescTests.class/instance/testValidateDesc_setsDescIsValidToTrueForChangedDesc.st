testing - happy path
testValidateDesc_setsDescIsValidToTrueForChangedDesc
	"test that validateDesc sets descIsValid to true for an changed product description"

	| app cli cmd prod |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	prod := Product newWithKey: 'A'.
	app products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A' Desc: 'B'.
	cmd validate.
	self
		assert: [ cmd descIsValid ]
		description: 'descIsValid should be true for a changed product description'