% # TODO: check confidence for all tags in search, not just the first

% search=`{echo $post_arg_search | tr ' ' $NEW_LINE | sort | tr $NEW_LINE ' '}
<h1>%($search%)</h1>

%{
images=`{cat $sitedir/_werc/tags/`{echo $search | awk '{print $1}'}}

for(tag in `{echo $search | awk '{$1=""; print $0}'}) {
    news=`{cat $sitedir/_werc/tags/$tag}
    for(old in $images)
        if(~ `{echo $news | grep -c `{echo $old | sed 's/:.*//'}} 0)
            images=`{echo $images | sed 's/'$old'//'}
}
%}

% for(i in $images) {
%     file=`{echo $i | sed 's/:.*//'}
%     confidence=`{echo $i | sed 's/.*://'}
%     if(~ `{echo $confidence $post_arg_confidence | awk '{print ($1 > $2)}'} 1) {
<a class="thumb" href="/up/%(`{echo $file | sed 's/\.thumb\.(gif|jpeg|jpg|png|ff|tif|tiff|bmp)$//'}%)"><img src="/up/%($file%)" /></a>
%     }
% }
