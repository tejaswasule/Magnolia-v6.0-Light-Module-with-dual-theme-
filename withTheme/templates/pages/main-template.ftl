<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />
    
      [#--INCLUDING CSS VIA THEME BEGINS-----]

        [#assign site = sitefn.site()!] 
        [#assign theme = sitefn.theme(site)!]
          
        [#list theme.cssFiles as cssFile]
          <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" />
        [/#list]
      
      [#--INCLUDING CSS VIA THEME ENDS-----]

  </head>
  <body class="main-template ${cmsfn.language()}">
  
  <!---------------HEADER BEGINS-------------->
      
      <div class="container-fluid header-wrapper">
          <div class="row">
            <div class="col-lg-12 no-padding">
                [@cms.area name="headerArea"/]
            </div>
          </div>
      </div>

  <!---------------HEADER ENDS-------------->


  <!---------------CONTENT BEGINS-------------->
      
      <div class="container-fluid main-container-wrapper">
          <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="col-lg-2 col-xs-12 main-container-padding navigation-wrapper">
                    [@cms.area name="navigationArea"/] 
                </div>
                <div class="col-lg-7 col-xs-12 main-container-padding article-wrapper">
                    [@cms.area name="articlesArea"/] 
                </div>
                <div class="col-lg-3 col-xs-12 main-container-padding advertising-wrapper">
                    [@cms.area name="advertisingArea"/] 
                </div>
                
            </div>
          </div>
      </div>
      
  <!---------------CONTENT ENDS-------------->

  <!---------------FOOTER BEGINS-------------->
      
      <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12 no-padding">
                [@cms.area name="footerArea"/]
          </div>
      </div>
      
  <!---------------FOOTER ENDS-------------->



  [#--INCLUDING JS VIA THEME BEGINS-----]  

    [#list theme.jsFiles as jsFile]
        <script src="${jsFile.link}"></script>
    [/#list]

  [#--INCLUDING JS VIA THEME ENDS-----]  
  </body>
</html>
