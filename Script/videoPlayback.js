function playVideo(sourceId, targetId) {
   if (typeof(sourceId)=='string') {sourceId=document.getElementById(sourceId);}
   if (typeof(targetId)=='string') {targetId=document.getElementById(targetId);}
   targetId.innerHTML=sourceId.innerHTML;
   return false;
}
