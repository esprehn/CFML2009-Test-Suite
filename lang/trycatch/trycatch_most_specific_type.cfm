<cfscript>
	// Railo Bug (v3.1.2.018)
	//
	// Railo uses first matching type in source order instead of
	// choosing the most specific catch block.
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	try
	{
		throw(type="a.b.c");
	}
	catch(a e)
	{
		fail();
	}
	catch(a.b e)
	{
		fail();
	}
	// Most specific type should always be used
	catch(a.b.c e)
	{
		assert("a.b.c",e.type);
	}
	
	writeOutput("success.");
</cfscript>