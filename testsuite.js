var Category = function(suite,level,name,tests)
{
	var self = this;
	
	this.children = [];
	this.level = level;
	this.name = name;
	this.suite = suite;
	
	if( typeof(tests) == "string" )
		throw "Malformed tests.js";
	
	var keys = [];
	$.each(tests,function(part) {
		keys.push(part);
	});
		
	$.each(keys.sort(),function(i,part) {
		self.children.push(
			(part.indexOf(".") != -1)
			? new Test(suite,part,tests[part])
			: new Category(suite,level+1,part,tests[part])
		);
	});
	
	this.execute = function(node)
	{
		var elem = document.createElement("div");
		elem.className = "category category-level-" + this.level;
		
		if( this.level )
		{
			elem.innerHTML += "<h" + this.level + ">" + this.name + "</h" + this.level + ">";
		}
				
		$(this.children).each(function(i,child) {
			child.execute(elem);
		});
		
		node.appendChild(elem);
	}
};

var Test = function(suite,name,script)
{
	var self = this;
	
	this.name = name;
	this.script = script;
	this.suite = suite;
	this.status = "pending";
	
	suite.addTest(this);
	
	function parseMessage(req)
	{	
		if( /^\s*<!-- Railo/.test(req.responseText) )
		{
			var match = req.responseText.match(/>Message<\/td>\s*.*?">(.*?)<\/td>/);
			return match ? match[1] : "";
		}
				
		return req.statusText;
	}
	
	function finishTest(status,message)
	{
		self.element.removeClass("status-pending");
		self.element.addClass("status-" + status.toLowerCase());
		$("span",self.element).html(status.toUpperCase() + ":");
		$(".message",self.element).html(message);
		self.status = status;
		self.suite.finishTest(self);
	}
	
	this.execute = function(node)
	{
		var elem = document.createElement("div");
		elem.className = "test status-pending";
		elem.id = this.name;
		elem.innerHTML = "<span class='status'>PENDING:</span><a></a><div class='message'></div>";
		
		this.element = $(elem);
		
		$("a",this.element)
			.attr("href",this.script)
			.attr("target","_blank")
			.text(this.name);
		
		$.ajax({
			url:this.script,
			success:function(data)
			{
				if( /^\s*success.\s*$/.test(data) )
				{
					finishTest("pass","");
				}
				else
				{
					finishTest("fail",data);
				}
			},
			error:function(req,status)
			{
				finishTest("fail",parseMessage(req));
			}
		});	
		
		node.appendChild(elem);
	}
};

var TestSuite = function(tests)
{
	var self = this;
	
	function updateStatus(values)
	{
		$("#run-status")
			.data({"pending":values.pending,"pass":values.pass,"fail":values.fail})
			.html(
			" (Pass: " + values.pass 
			+ ", Fail: " + values.fail 
			+ (values.pending ? (", Pending: " + values.pending) : "")
			+ ")"
		);		
	}
	
	this.execute = function()
	{
		updateStatus({"pending":this.tests.length,"pass":0,"fail":0});
		
		this.categories.execute(document.body);
	}
	
	this.addTest = function(test)
	{
		this.tests.push(test);
	}
	
	this.finishTest = function(test)
	{
		var data = $("#run-status").data();
	
		data.pending--;
		data[test.status]++;

		updateStatus(data);
	}

	this.tests = [];
	this.categories = new Category(this,0,"",tests);
};
