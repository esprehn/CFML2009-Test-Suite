<cfscript>

	public function attributes()
		hint="1"
		foo$bar="2"
		foo_bar="function foo x=""1"" { return x; }"
		void="2010-3-25 Value ##Something##"
		required="##Something## 2010-3-25 Value"
	{}
	
	writeOutput("success.");
</cfscript>