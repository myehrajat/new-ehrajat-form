function addOption(selectbox,value,text){
	for(i=selectbox.options.length-1;i>=0;i--){
		if(selectbox.options[i].value === value && selectbox.options[i].text === text){
			//alert(selectbox.options[i].value);
			var addopt = false;
			break;
		}
	}
	if(addopt!=false){
		var optn = document.createElement("OPTION");
		optn.text = text;
		optn.value = value;
		selectbox.options.add(optn);
	}
}
function addOptions(selectbox,optValues,optTexts ){
	var num = optValues.length-1;
	var i = 0;
	while(num>=i){
		addOption(selectbox,optValues[i],optTexts[i]);
		i++;
	}
}
function checkSelectSubCatByValue(SelectSubCatByValues){
	var num = SelectSubCatByValues.length-1;
	var i = 0;
	while(SelectSubCatByValues.length>=i){
		var args = SelectSubCatByValues[i];
		//args[0]
		//alert(args[1]+args[2]);
		var result = SelectSubCatByValue(args[0],args[1],args[2],args[3],args[4],args[5]);			
		if(result===true){
			break;
		}
		i++;
	}
}
/*
this function will be appeared in output html page and its a series if check and if is matched it will add its own option no else is supported because each if is seperately checked for making an else function you should use a descriptive negative value like if(a==1){these options};if(a!=1){other options}

*/
function SelectSubCatByValue(thisSelect,operator,value,dependentId,optValues,optTexts){
// ON selection of category this function will work
	var dependentSelect = document.getElementById(dependentId);
	removeAllOptions(dependentSelect);
	//addOption(document.getElementById(dependentId), "", "SubCat", "");
	var thisSelectValue = thisSelect.value;
	var evalCode = '';
	//if(operator != 'self'){
	evalCode='if("'+thisSelectValue+'"'+operator+'"'+value+'"){';
	var num = optValues.length-1;
	evalCode = evalCode+'addOption(document.getElementById("'+dependentId+'"),"", "-------");';
	var i = 0;
	while(num>=i){
		evalCode = evalCode+'addOption(document.getElementById("'+dependentId+'"),"'+optValues[i]+'", "'+optTexts[i]+'");';
		i++;
	}
	//if(operator != 'self'){
	evalCode = evalCode+'}';
	//}
	//alert(evalCode);
	eval(evalCode);
	switch(operator){
	case'==':
		if(thisSelectValue == value){
			return true;	
		}else{
			return false;
		}
	break;
	case'===':
		if(thisSelectValue===value){
			return true;	
		}else{
			return false;
		}
	break;
	case'!=':
		if(thisSelectValue!=value){
			return true;	
		}else{
			return false;
		}
	break;
	case'!==':
		if(thisSelectValue!==value){
			return true;	
		}else{
			return false;
		}
	break;
	case'>=':
		if(thisSelectValue>=value){
			return true;	
		}else{
			return false;
		}
	break;
	case'<=':
		if(thisSelectValue<=value){
			return true;	
		}else{
			return false;
		}
	break;
	case'>':
		if(thisSelectValue>value){
			return true;	
		}else{
			return false;
		}
	break;
	case'<':
		if(thisSelectValue<value){
			return true;	
		}else{
			return false;
		}
	break;
		
	}
}

function removeAllOptions(selectbox)
{
	var i;
	for(i=selectbox.options.length-1;i>=0;i--)
	{
		//selectbox.options.remove(i);
		selectbox.remove(i);
	}
}


