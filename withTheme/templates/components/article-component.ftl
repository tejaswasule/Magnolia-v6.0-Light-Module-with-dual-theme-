<article class="article-component">
	<div class="col-md-12">
	  [#if content.title?has_content]
	    <h3>${content.title!}</h3>
	  [/#if]
	  [#if content.desc?has_content]
    		${cmsfn.decode(content).desc!}
  		[/#if]	
	</div>
</article>
