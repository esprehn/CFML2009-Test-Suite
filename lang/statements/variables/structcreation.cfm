<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	variables.foo.bar.baz = 1;
	assert(1,variables.foo.bar.baz);
	
	writeOutput("success.");
</cfscript>