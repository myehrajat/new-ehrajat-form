function addElement(maxExtra,hiddenCounterId,containerId,/*fieldId,*/value,childTag,calledBy) {
	//alert('calledBy : '+calledBy);
	//alert('containerId : '+containerId);
	//alert('childTag : '+childTag);
	//alert(containerId);
var orgContainer=containerId;
  var numi = document.getElementById(hiddenCounterId);
  if(numi.value < maxExtra){
	  var ni = document.getElementById(containerId);
	  alert(containerId);
	  var num = (document.getElementById(hiddenCounterId).value-1)+2;
	  numi.value = num;
	  if(typeof(childTag)==='undefined'){
		  //var childTag = 'span';
		  var childTag = 'textarea';
		  
	  }
	  var newdiv = document.createElement(childTag);
	  var i=1;
	  while(containerId.lastIndexOf('[')> -1){
		var f = containerId.lastIndexOf('[')+1;
		var l = containerId.lastIndexOf(']');
		//alert('containerId = '+containerId);
		//alert('bare unique = '+containerId.substring(20,l+1));
		//alert('numbers from end = '+containerId.substring(f,l));
		//alert(document.getElementById('sst_extra_counter'+containerId.substring(20,l+1)).value);
		var newNum = document.getElementById('sst_extra_counter'+containerId.substring(20,l+1)).value;
		if(newNum>1){
			//alert('sss');
			value = value+'<input name="sst_extra_counter'+containerId.substring(20,f)+newNum+']" type="hidden" value="0" />';
			value = value+'<span id="sst_extra_containter'+containerId.substring(20,f)+newNum+']"></span>';

			//alert('<input name="sst_extra_counter'+containerId.substring(20,f)+newNum+']" type="hidden" value="0" />');
			//alert('<span id="sst_extra_containter'+containerId.substring(20,f)+newNum+']"></span>');
		}
			//value = value+'<input name="sst_extra_counter'+containerId.substring(20,l+1)+'" type="hidden" value="0" />';
	//$end_extra .= '<input name="'.$extra_counter.'" type="hidden" value="0" />';
	//$end_extra .= '<span id="'.$extra_container.'"></span>';
			/*
			//alert(i);
			var firstUnique = document.getElementById('sst_extra_counter'+containerId.substring(20,l+1)).value;
		  alert('firstUnique = '+firstUnique);
		}else if(i===2){
			//alert(i);
			var secondUnique = document.getElementById('sst_extra_counter'+containerId.substring(20,l+1)).value;
	  alert('secondUnique = '+secondUnique);
		}*/
		//alert('values = '+document.getElementById('sst_extra_counter'+containerId.substring(20,l+1)).value);
		containerId = containerId.substring(0,f-1);
		var f = containerId.lastIndexOf('[')+1;
		var l = containerId.lastIndexOf(']');
		containerId = containerId.substring(0,f-1);
		i++;
	  }
	  /*
	  if(hvalue>1){
		  var divIdName = containerId.substring(f,l)+'_'+num;
		  alert(divIdName);
	  }else{
		  */
	  var divIdName = /*fieldId+'_'+*/containerId+'_'+num;
	  newdiv.setAttribute('id',divIdName);
//	  var myValue = value;//'Element Number '+num+' has been added! <a href=\'#\' onclick=\"removeElement(\''+divIdName+'\')\">Remove the div "'+divIdName+'"</a>';
	  //}
	  //alert(value);
	  var firstValue = value.replace(/sst_unique_string_for_extra/g,"_"+num);
	  alert(firstValue);
	  alert(divIdName);
	  
	  document.appendChild(newdiv);
	  //alert(firstValue);
	  //var myValue = firstValue.replace(/&quot;/g,"\"");
	  //alert(myValue);
	  newdiv.innerHTML = firstValue;
//	  newdiv.innerHTML = myValue;
	  
	  ni.appendChild(newdiv);
	  //alert(value);
  }
}
function removeElement(hiddenCounterId,containerId) {
  var numi = document.getElementById(hiddenCounterId);
  if(numi.value>0){
	  var num = document.getElementById(hiddenCounterId).value-1;
	  numi.value = num;
	  var d = document.getElementById(containerId);
	  var olddiv = d.lastChild;
	  d.removeChild(olddiv);
  }
}