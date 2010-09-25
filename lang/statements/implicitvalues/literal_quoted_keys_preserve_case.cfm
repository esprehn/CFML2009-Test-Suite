<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	x = {"foo.bar.baz"=2,foo.bar.baz=7};
	
	// Ensure literal quoted implicit keys are case preserving
	assert(0,compare("FOO,foo.bar.baz",listSort(structKeyList(x),"text")));
	
	writeOutput("success.");
</cfscript>