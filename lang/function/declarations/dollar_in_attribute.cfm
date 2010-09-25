<cfscript>
	// Railo Bug (v3.1.2.018)
	// 
	// Cannot have dollar sign in attribute.

	include "/cfml2009testsuite/testsuite.cfm";

	public function attributes() foo$bar="2" {}
	
	assert(true,structKeyExists(getMetaData(attributes),"foo$bar"));
	
	writeOutput("success.");
</cfscript>