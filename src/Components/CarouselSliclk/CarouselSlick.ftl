<div class="responsive">
  <#if Images.getSiblings()?has_content>
    <#list Images.getSiblings() as cur_Images>
      <#if (cur_Images.Image99008899.getData())?? && cur_Images.Image99008899.getData() != "">
        <div><img alt="${cur_Images.Image99008899.getAttribute("alt")}" data-fileentryid="${cur_Images.Image99008899.getAttribute("fileEntryId")}" src="${cur_Images.Image99008899.getData()}" /></div>
      </#if>
    </#list>
  </#if>  
</div>

