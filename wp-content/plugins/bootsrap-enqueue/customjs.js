
function make_slug(str){
  const a = 'àáâäæãåāăąçćčđďèéêëēėęěğǵḧîïíīįìłḿñńǹňôöòóœøōõőṕŕřßśšşșťțûüùúūǘůűųẃẍÿýžźż·/_,:;';
  const b = 'aaaaaaaaaacccddeeeeeeeegghiiiiiilmnnnnoooooooooprrsssssttuuuuuuuuuwxyyzzz------';
  const p = new RegExp(a.split('').join('|'), 'g');

  var n = str.toString().toLowerCase();
   n =  n.replace(/\s+/g, '-');
    n =  n.replace(p, c => b.charAt(a.indexOf(c))) ;
    n =  n.replace(/[^\w\-]+/g, '');
    n =  n.replace(/\-\-+/g, '-');
    n =  n.replace(/^-+/, '');
   n =  n.replace(/-+$/, '') ;
	return n;
}
