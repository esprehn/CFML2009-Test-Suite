<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	function public_attribute_function() access="public" {}
	public function public_function() {}
	assert("public",getMetaData(public_attribute_function).access);
	assert("public",getMetaData(public_function).access);
		
	function package_attribute_function() access="package" {}
	package function package_function() {}
	assert("package",getMetaData(package_attribute_function).access);
	assert("package",getMetaData(package_function).access);
	
	function private_attribute_function() access="private" {}
	private function private_function() {}
	assert("private",getMetaData(private_attribute_function).access);
	assert("private",getMetaData(private_function).access);
	
	public any function any() any="2010-3-25 Value ##Something##" {}
	public binary function binary() binary="2010-3-25 Value ##Something##" {}
	public boolean function boolean() boolean="2010-3-25 Value ##Something##" {}
	private component function component() component="2010-3-25 Value ##Something##" {}
	private date function date() date="2010-3-25 Value ##Something##" {}
	public guid function guid() guid="2010-3-25 Value ##Something##" {}
	public numeric function numeric() numeric="2010-3-25 Value ##Something##" {}
	private string function string() string="2010-3-25 Value ##Something##" {}
	package uuid function uuid() uuid="2010-3-25 Value ##Something##" {}
	package void function void() void="2010-3-25 Value ##Something##" {}
	private xml function xml() void="2010-3-25 Value ##Something##" {}
	private foo.bar.ComponentName function ComponentName() ComponentName="2010-3-25 Value ##Something##" {}

	public function returntype_attribute_any() returntype="any" any="2010-3-25 Value ##Something##" {}
	assert(getMetaData(any).returntype,getMetaData(returntype_attribute_any).returntype);
	assert("any",getMetaData(returntype_attribute_any).returntype);
	public function returntype_attribute_binary() returntype="binary" binary="2010-3-25 Value ##Something##" {}
	assert(getMetaData(binary).returntype,getMetaData(returntype_attribute_binary).returntype);
	assert("binary",getMetaData(returntype_attribute_binary).returntype);
	public function returntype_attribute_boolean() returntype="boolean" boolean="2010-3-25 Value ##Something##" {}
	assert(getMetaData(boolean).returntype,getMetaData(returntype_attribute_boolean).returntype);
	assert("boolean",getMetaData(returntype_attribute_boolean).returntype);
	private function returntype_attribute_component() returntype="component" component="2010-3-25 Value ##Something##" {}
	assert(getMetaData(component).returntype,getMetaData(returntype_attribute_component).returntype);
	assert("component",getMetaData(returntype_attribute_component).returntype);
	private function returntype_attribute_date() returntype="date" date="2010-3-25 Value ##Something##" {}
	assert(getMetaData(date).returntype,getMetaData(returntype_attribute_date).returntype);
	assert("date",getMetaData(returntype_attribute_date).returntype);
	public function returntype_attribute_guid() returntype="guid" guid="2010-3-25 Value ##Something##" {}
	assert(getMetaData(guid).returntype,getMetaData(returntype_attribute_guid).returntype);
	assert("guid",getMetaData(returntype_attribute_guid).returntype);
	public function returntype_attribute_numeric() returntype="numeric" numeric="2010-3-25 Value ##Something##" {}
	assert(getMetaData(numeric).returntype,getMetaData(returntype_attribute_numeric).returntype);
	assert("numeric",getMetaData(returntype_attribute_numeric).returntype);
	private function returntype_attribute_string() returntype="string" string="2010-3-25 Value ##Something##" {}
	assert(getMetaData(string).returntype,getMetaData(returntype_attribute_string).returntype);
	assert("string",getMetaData(returntype_attribute_string).returntype);
	package function returntype_attribute_uuid() returntype="uuid" uuid="2010-3-25 Value ##Something##" {}
	assert(getMetaData(uuid).returntype,getMetaData(returntype_attribute_uuid).returntype);
	assert("uuid",getMetaData(returntype_attribute_uuid).returntype);
	package function returntype_attribute_void() returntype="void" void="2010-3-25 Value ##Something##" {}
	assert(getMetaData(void).returntype,getMetaData(returntype_attribute_void).returntype);
	assert("void",getMetaData(returntype_attribute_void).returntype);
	private function returntype_attribute_xml() returntype="xml" void="2010-3-25 Value ##Something##" {}
	assert(getMetaData(xml).returntype,getMetaData(returntype_attribute_xml).returntype);
	assert("xml",getMetaData(returntype_attribute_xml).returntype);
	private function returntype_attribute_ComponentName() returntype="foo.bar.ComponentName" ComponentName="2010-3-25 Value ##Something##" {}
	assert(getMetaData(ComponentName).returntype,getMetaData(returntype_attribute_ComponentName).returntype);
	assert("foo.bar.ComponentName",getMetaData(returntype_attribute_ComponentName).returntype);
	
	writeOutput("success.");
</cfscript>