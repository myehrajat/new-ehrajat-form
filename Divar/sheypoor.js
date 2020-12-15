//Category
document.evaluate('/html/body/main/section/div/div[1]/form/p[1]/a', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
document.evaluate('/html/body/main/section/div/div[7]/div/div[2]/div/ul/li[1]/span', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
document.evaluate('/html/body/main/section/div/div[7]/div/div[2]/div/ul/li[7]/span', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
//Price
var Price = 7000000;
document.querySelector('input[id=item-form-price]').value=Price;

//document.evaluate('//*[@id="item-form-price"]', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.value=Price;
//title
document.querySelector('input[id=item-form-title]').focus();

//desc
document.querySelector('textarea[id=item-form-description]').focus();



//Location
//state
var xpath = '/html/body/main/section/div/div[6]/div/div[2]/div[2]/ul/li';
var iterator = document.evaluate(xpath, document, null, XPathResult.UNORDERED_NODE_ITERATOR_TYPE, null);
try {
  var thisNode = iterator.iterateNext();
  var index = 1
  while (thisNode) {
    if (thisNode.textContent.trim() == 'تهران') {
      console.log(document.evaluate(xpath+'['+index+']/span', thisNode, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue);
     document.evaluate(xpath+'['+index+']/span', thisNode, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
      break;
    } else {
      index++;
      thisNode = iterator.iterateNext();
    }
  }
} catch (e) {
  dump('Error: Document tree modified during iteration ' + e);
}


//t-district-932

if(document.querySelector('.mode-district')!==null){
var xpath = '/html/body/main/section/div/div[6]/div/div[2]/div[1]/ul/li';
var iterator = document.evaluate(xpath, document, null, XPathResult.UNORDERED_NODE_ITERATOR_TYPE, null);
try {
  var thisNode = iterator.iterateNext();
  var index = 1
  while (thisNode) {
    if (thisNode.textContent.trim() == 'کرمان') {
      console.log(document.evaluate(xpath+'['+index+']/span', thisNode, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue);
     document.evaluate(xpath+'['+index+']/span', thisNode, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
      break;
    } else {
      index++;
      thisNode = iterator.iterateNext();
    }
  }
} catch (e) {
  dump('Error: Document tree modified during iteration ' + e);
}
}
///Image
document.querySelector('input[type=file]').accessKey=1;

document.querySelector('button[type=submit]').click();



// JavaScript Document










