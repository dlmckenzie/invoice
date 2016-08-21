as yet unclassified
buildBrowser
	
	browser := GLMTabulator new.
	
	browser
		row: [ :r | 
			r
				column: #categories;
				column: #instances;
				column: #details ].
	browser transmit
		to: #categories;
		andShow: [ :a | a fastList display: self categories ].
	browser transmit
		to: #instances;
		from: #categories;
		andShow: [ :a | self instancesIn: a ].
	browser transmit
		to: #details;
		from: #instances;
		from: #categories;
		andShow: [ :a | self detailsIn: a ].
	