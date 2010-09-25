<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	function test() {}

	x = 2;
	x = [{x=[3,{"z"=2},1]},["2","2,3"],[1,2,{"m"=x}]];
	y = x;
	y[1].x[2].z = 5;
	arrayAppend(y,"foo");
	assert(5,y[1].x[2].z);
	assert(5,x[1].x[2].z);
	assert("foo",y[4]);	
	assert(3,arrayLen(x));
	
	x = 2;
	x = {x=[{x=[3,{"z"=2},1]},[2,2,3],[1,2,{"m"=x}]],y=[1,"m"],"abc"=[1,2,getMetaData(test)]};
	x.abc[3].k = 10;
	y = structCopy(x);
	y.abc = 2;
	y.x[1] = 3;
	assert(10,x.abc[3].k);
	assert(2,y.abc);
	assert(true,isStruct(x.x[1]));
	assert(3,y.x[1]);
	
	y = structCopy(return_arguments(argumentCollection=x));
	y.abc[3].k = 20;
	assert(20,x.abc[3].k);
	assert(20,y.abc[3].k);
	y.abc = "test";
	assert("test",y.abc);
	assert(true,isArray(x.abc));
	
	writeOutput("success.");
</cfscript>