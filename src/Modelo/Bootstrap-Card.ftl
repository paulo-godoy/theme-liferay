<#if Fieldset61044783.getSiblings()?has_content>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3">
        <#list Fieldset61044783.getSiblings() as cur_Fieldset61044783>
            <div class="col mb-4">
                <div class="card">
                    <#if cur_Fieldset61044783.Image66540021.getData()??>
                        <img class="card-img-top img-fluid" alt="${cur_Fieldset61044783.Image66540021.getAttribute("alt")}" data-fileentryid="${cur_Fieldset61044783.Image66540021.getAttribute("fileEntryId")}" src="${cur_Fieldset61044783.Image66540021.getData()}">
                    </#if>
                    <div class="card-body">
                        <#if cur_Fieldset61044783.Fieldset07256975.Text83791795.getData()??>
                            <h5 class="card-title text-truncate">${cur_Fieldset61044783.Fieldset07256975.Text83791795.getData()}</h5> 
                        </#if>
                        <#if cur_Fieldset61044783.Fieldset07256975.Fieldset45028451.RichText29169318.getData()??>
                            <p class="card-text">${cur_Fieldset61044783.Fieldset07256975.Fieldset45028451.RichText29169318.getData()}</p>
                        </#if>
                        <#assign dateData = cur_Fieldset61044783.Fieldset07256975.Fieldset45028451.Date65256656.getData()?string>
                        <#if dateData?has_content>
                            <#assign dateObj = dateUtil.parseDate("yyyy-MM-dd", dateData, locale)>
                            <p class="card-text"><small class="text-muted">${dateUtil.getDate(dateObj, "dd MMM yyyy - HH:mm:ss", locale)}</small></p> 
                        </#if>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</#if>
