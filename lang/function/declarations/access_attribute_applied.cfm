<cfscript>
	// Railo Bug (v3.1.2.018)
	// 
	// access attribute is not respected.

	include "/cfml2009testsuite/testsuite.cfm";

	function public_attribute_function() access="public" {}
	assert("public",getMetaData(public_attribute_function).access);
	
	function package_attribute_function() access="package" {}
	assert("package",getMetaData(package_attribute_function).access);
	
	function private_attribute_function() access="private" {}
	assert("private",getMetaData(private_attribute_function).access);
	
	writeOutput("success.");
</cfscript>