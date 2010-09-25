<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	try
	{
		throw(type="foo.bar.BAZ.bam.Test");
	}
	catch(foo.bar.Baz e)
	{
		assert("foo.bar.baz.bam.Test",e.type);
	}
	catch(foo.bar.Other e)
	{
		fail();
	}
	
	writeOutput("success.");
</cfscript>