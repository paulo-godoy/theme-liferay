<!-- Inclui o jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- Inclui o Slick Carousel CSS -->
<link rel="stylesheet" type="text/css" href="src/css/slick.scss"/>
<link rel="stylesheet" type="text/css" href="src/css/slick-theme.css"/>

<!-- Seu HTML para o carousel -->
<div class="responsive">
  <#if Images.getSiblings()?has_content>
    <#list Images.getSiblings() as cur_Images>
      <#if (cur_Images.Image99008899.getData())?? && cur_Images.Image99008899.getData() != "">
        <div><img alt="${cur_Images.Image99008899.getAttribute("alt")}" data-fileentryid="${cur_Images.Image99008899.getAttribute("fileEntryId")}" src="${cur_Images.Image99008899.getData()}" /></div>
      </#if>
    </#list>
  </#if>  
  <!-- ... -->
</div>

<!-- Inclui o Slick Carousel JS -->
<script type="text/javascript" src="src/script/slick.min.js"></script>

<!-- script JavaScript com a configuração do Slick Carousel -->
<script src="src/script/CarouselSlick.js"></script>