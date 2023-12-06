<#if Fieldset14741542.getSiblings()?has_content>

  <div class="card-group row">

    <#list Fieldset14741542.getSiblings() as cur_Fieldset14741542>
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="card">
          <div class="card-body">
            <#if (cur_Fieldset14741542.titulo.getData())??>
              <h5 class="card-title">${cur_Fieldset14741542.titulo.getData()}</h5>
            </#if>

            <#if (cur_Fieldset14741542.text.getData())??>
              <p class="card-text">${cur_Fieldset14741542.text.getData()}</p>
            </#if>

            <#if (cur_Fieldset14741542.CheckboxMultiple03995881.getData())??>
              <p class="card-text">${cur_Fieldset14741542.CheckboxMultiple03995881.getData()}</p>
            </#if>

            <#assign cur_Fieldset14741542_date_Data = getterUtil.getString(cur_Fieldset14741542.date.getData())>
            <#if validator.isNotNull(cur_Fieldset14741542_date_Data)>
              <#assign cur_Fieldset14741542_date_DateObj = dateUtil.parseDate("yyyy-MM-dd", cur_Fieldset14741542_date_Data, locale)>
              <p class="card-text">${dateUtil.getDate(cur_Fieldset14741542_date_DateObj, "dd MMM yyyy - HH:mm:ss", locale)}</p>
            </#if>

            <#if (cur_Fieldset14741542.autor.getData())??>
              <p class="card-text">${cur_Fieldset14741542.autor.getData()}</p>
            </#if>
          </div>
        </div>
      </div>
    </#list>

  </div>

</#if>
