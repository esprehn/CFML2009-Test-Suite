<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	try
	{
		throw();
	}
	catch(any e)
	{
		assert("application",e.type);
	}
	
	try
	{
		// Throws the message "error", not the type "error".
		throw "error";
	}
	catch(error e)
	{
		fail();
	}
	catch(any e)
	{
		assert("application",e.type);
	}
	
	writeOutput("success.");
</cfscript>