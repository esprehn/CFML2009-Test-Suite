<cfscript>
	// duplicate() and imageNew() should duplicate images.
	//
	// Note: This didn't work in CF8
	//
	
	include "/cfml2009testsuite/testsuite.cfm";
	
	image1 = imageNew("",100,100);
	image2 = duplicate(image1);
	imageResize(image2,200,200);
	assert(200,imageGetWidth(image2));
	assert(100,imageGetWidth(image1));	
	
	image1 = imageNew("",100,100);
	image2 = imageNew(image1);
	imageResize(image2,200,200);
	assert(200,imageGetWidth(image2));
	assert(100,imageGetWidth(image1));	
	
	writeOutput("success.");
</cfscript>