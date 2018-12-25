<header class="header-component">
		<div class="col-md-12">
			[#if content.image?has_content]
    			[#assign image = damfn.getAsset(content.image)]
    				[#assign imageLink = image.link]
    				<img src='${imageLink!}' class='img-responsive logo'  alt='${content.caption!"image"}'>
 			[/#if]		
		</div>
</header>
