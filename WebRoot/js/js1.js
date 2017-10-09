//进行参数校验
function checknum()
{
	var num1=document.getElementById("num1").value;
	var num2=document.getElementById("num2").value;
	if(num1=="" ||num2=="")
	{
		window.alert("参数num不能为空");
		return false;
	}
	//var reg=/^[1-9]\d*(\.[0-9]+)?$|^0(\.[0-9]+)?$/gi;
    var reg=/^[1-9]\d*(\.[0-9]+)?$|^0(\.[0-9]+)?$/i;
	if(!reg.test(num1))
	{
		window.alert("参数num1格式不正确");
		return false;
	}	
	//reg.lastIndex=0;
	if(!reg.test(num2))
	{
		window.alert("参数num2格式不正确");
		return false;
	}
}