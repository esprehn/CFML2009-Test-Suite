<cfscript>
	// File Handles shouldn't be able to be duplicated.
	//
	
	include "/cfml2009testsuite/testsuite.cfm";
	
	try
	{
		f1 = fileOpen(getCurrentTemplatePath(),"read");
		f2 = duplicate(f1);
		assert("open",f1.status);
		fileClose(f2);
		assert("closed",f2.status);
		assert("closed",f1.status);
	}
	finally
	{
		if( structKeyExists(variables,"f1") )
			fileClose(f1);
			
		if( structKeyExists(variables,"f2") )
			fileClose(f2);
	}
	
	writeOutput("success.");
</cfscript>