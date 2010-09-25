<cfscript>
	// Adobe Bug (CF9)
	//

	function test() {}
	
	// Cannot call function pointers stored in an AttributeCollection
	// which includes metadata collections and the attributes scope in 
	// custom tags.
	//
	// The test method was not found.
	//
	// Broken in 9.0.1
	// 
	attributes = structCopy(getMetaData(test));
	attributes.test = test;
	attributes.test();
	attributes.test(bar=2,arg={a="foo#new cfml2009testsuite.Query().getName()#"});
	attributes.test(["foo#new cfml2009testsuite.Query().getName()#"]);
		
	writeOutput("success.");
</cfscript>