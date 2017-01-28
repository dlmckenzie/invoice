testing - edge cases
testValidateDesc_setsDescIsValidToFalseForUnchangedDesc
	"test that validateDesc sets descIsValid to false for an unchanged product description"

	| app cli cmd desc prod |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	desc := 'Part A'.
	prod := Product newWithKey: 'A'.
	prod updateDescription: desc.
	app products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A' Desc: desc.
	cmd validate.
	self deny: [ cmd descIsValid ] description: 'descIsValid should be false for an unchangd product description'