<br /><h5>Recent images</h5>
% for(file in `{ls -t $sitedir/up/*.thumb.* | sed 10q}) {
<a class="thumb" href="/up/%(`{basename $file | sed 's/\.thumb\.(gif|jpeg|jpg|png|ff|tif|tiff|bmp)$//'}%)"><img src="/up/%(`{basename $file}%)" /></a>
% }
