<cfscript>

	public function implicit_value(arguments={foo=1}) {writeDump(arguments);}
	function implicit_value1(argumentCollection=[1,2,3]) {}
	private function implicit_value2(required argumentCollection=[{x=1,"y.foo"=3,z.foo=[3,[parseDateTime("value")]]},{a={a={a=2}}},[[[[3]]]]]) {}
	function implicit_value3(void void={x=[1],y=2}) {}
	package function implicit_value4(void={void={void=[{void=2}]}}) {}
	function implicit_value5(required any variables={x=[{"z"=2,y=[1,2,3],foo=createTimeSpan(0,1,2,3)}]}) {}
	public function implicit_value6(required required void={x=[{"z"=2,y=[1,2,3],foo=createTimeSpan(0,1,2,3)}]}) {}
	private function implicit_value7(a,required b={"b"=z}) {}
	package function implicit_value8(a,b={},c=[createTimeSpan(0,1,2,floor(1.1))],d,e=1) {}
	
	writeOutput("success.");
</cfscript>