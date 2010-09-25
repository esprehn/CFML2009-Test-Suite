<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	try
	{
		throw(type="something");
	}
	catch(something e)
	{
		assert("something",e.type);
	}
	
	try
	{
		// Positional arguments
		throw("message is here","_type2.is.$here");
	}
	catch(_type2 e)
	{
		fail();
	}
	// More specific type always used
	catch(_type2.is.$here e)
	{
		assert("_type2.is.$here",e.type);
	}
	catch(_type2.is e)
	{
		fail();
	}
	
	try
	{
		// Positional arguments
		throw("message is here","type.is.here");
	}
	// More specific type always used
	catch(type.is.here e)
	{
		assert("type.is.here",e.type);
	}
	catch(type.is e)
	{
		fail();
	}
	catch(type e)
	{
		fail();
	}
	
	writeOutput("success.");
</cfscript>