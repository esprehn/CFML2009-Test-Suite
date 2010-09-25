<cfscript>
	// Adobe Bug (CF9)
	//
	
	include "/cfml2009testsuite/testsuite.cfm";
	
	
	// Spreadsheets are not copied by duplicate().
	//
	x = spreadsheetNew("sheet1");
	y = duplicate(x);
	spreadsheetAddRow(x,"x,y,z");
	assert(1,x.rowCount);
	assert(0,y.rowCount);
	
	writeOutput("success.");
</cfscript>