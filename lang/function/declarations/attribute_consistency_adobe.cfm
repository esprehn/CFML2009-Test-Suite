<cfscript>
	// Railo should fail this test since it has functions called
	// struct, array and query.
	
	include "/cfml2009testsuite/testsuite.cfm";
	
	public query function query() query="2010-3-25 Value ##Something##" {}
	package struct function struct() struct="2010-3-25 Value ##Something##" {}
	public array function array() array="2010-3-25 Value ##Something##" {}

	public function returntype_attribute_query() returntype="query" query="2010-3-25 Value ##Something##" {}
	assert(getMetaData(query).returntype,getMetaData(returntype_attribute_query).returntype);
	assert("query",getMetaData(returntype_attribute_query).returntype);

	package function returntype_attribute_struct() returntype="struct" struct="2010-3-25 Value ##Something##" {}
	assert(getMetaData(struct).returntype,getMetaData(returntype_attribute_struct).returntype);
	assert("struct",getMetaData(returntype_attribute_struct).returntype);

	public function returntype_attribute_array() returntype="array" array="2010-3-25 Value ##Something##" {}
	assert(getMetaData(array).returntype,getMetaData(returntype_attribute_array).returntype);
	assert("array",getMetaData(returntype_attribute_array).returntype);

	writeOutput("success.");
</cfscript>