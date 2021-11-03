function XY(e) {
  x = event.clientX + document.body.scrollLeft;
  y = event.clientY + document.body.scrollTop;
}

function ShowMessage(text,id) {
  top_pos = y - 170 + 'px';
  left_pos = x - 100 + 'px';            
  document.body.insertAdjacentHTML('BeforeEnd', '<DIV STYLE="position:absolute; TOP:' + top_pos + '; LEFT:' + left_pos + ';" ID="' + id + '"><table border=0 bgcolor="#476078" cellpadding=1 cellspacing=0><tr><td>' + text + '</td></tr></table></DIV>');
}

function Kill(id) {
  id.innerHTML = "";
  id.outerHTML = "";
}