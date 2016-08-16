accessing
buildBrowser
	browser := GLMTabulator new.
	browser title: 'Invoices Browser'.
	browser
		column: #packages;
		column: #classes.
	browser transmit
		to: #packages;
		andShow: [ :a | self packagesIn: a ].
	browser transmit
		from: #packages;
		to: #classes;
		andShow: [ :a | self classesIn: a ]