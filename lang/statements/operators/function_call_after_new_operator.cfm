<cfscript>
	// Railo Bug (v3.1.2.018)
	// 
	// Cannot call function on result of new operator.

	include "/cfml2009testsuite/testsuite.cfm";
	import cfml2009testsuite.Query;

	new Query().getName();
	x = new cfml2009testsuite.Query().getName();

	assert("query name","#new cfml2009testsuite.Query().getName()#");
	assert("query name","#new Query().getName()#");
	
	writeOutput("success.");
</cfscript>