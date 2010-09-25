<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	x = 0;

	try
	{
		try
		{
			try
			{
				throw(type="foo.BAR.Baz.BAM");
			}
			catch(BAM e)
			{
				fail();
			}
			finally
			{
				x++;
			}
		}
		catch(foo.bar e)
		{
			// pass.
		}
	}
	catch(any e)
	{
		fail();
	}
	finally
	{
		x++;
	}
	
	assert(2,x);
	
	writeOutput("success.");
</cfscript>