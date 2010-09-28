<cfscript>
	// Railo Bug (v3.2)
	// 
	// Cannot implicitly create a struct if variable already existed as string.
	//
	// Per Mark Drew: "by design"
	//
	
	include "/cfml2009testsuite/testsuite.cfm";
	
	variables.test = "foo";
	variables.test.more.keys = 2;
	assert(2,variables.test.bar.baz);	
	
	writeOutput("success.");
</cfscript>
	
