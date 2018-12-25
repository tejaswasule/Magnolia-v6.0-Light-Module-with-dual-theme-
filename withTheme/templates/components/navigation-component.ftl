<nav class="navigation-component">
	<div class="col-md-12">
		[#if content.desc?has_content]
    		${cmsfn.decode(content).desc!}
  		[/#if]		
	</div>	
</nav>