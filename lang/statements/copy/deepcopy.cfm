<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	function test() {}

	x = 2;
	x = [{x=[3,{"z"=2},1]},["2","2,3"],[1,2,{"m"=x}]];
	y = duplicate(x);
	y[1].x[2].z = 5;
	arrayAppend(y,"foo");
	assert(5,y[1].x[2].z);
	assert(2,x[1].x[2].z);
	assert("foo",y[4]);
	assert(3,arrayLen(x));
	
	x[1] = 12;
	assert(12,x[1]);
	assert(true,isStruct(y[1]));
	
	x = 2;
	x = {x=[{x=[3,{"z"=2},1]},[2,2,3],[1,2,{"m"=x}]],y=[1,"m"],"abc"=[1,2,getMetaData(test)]};
	x.abc[3].k = 10;
	y = duplicate(x);
	y.abc[3].k = 5;
	assert(10,x.abc[3].k);
	assert(5,y.abc[3].k);
	
	y = duplicate(return_arguments(argumentCollection=x));
	y.abc[3].k = 20;
	assert(10,x.abc[3].k);
	assert(20,y.abc[3].k);
	
	writeOutput("success.");
</cfscript>