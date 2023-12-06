<#if entries?has_content>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Informações Disponíveis</h5>
      <ul class="list-group">
        <#list entries as curEntry>
          <#assign assetRenderer = curEntry.getAssetRenderer()>
          <#assign fieldsMap = assetRenderer.getDDMFormValuesMap()>

          <li class="list-group-item">
            <strong>Título:</strong> ${curEntry.getTitle(locale)?html}<br>
            <strong>Conteúdo:</strong> ${curEntry.getContent(locale)?html}<br>
            <strong>Data:</strong> ${curEntry.getDate()?string("dd/MM/yyyy")}<br>
            <strong>Autor:</strong> ${curEntry.getAuthor(locale)?html}<br>

            <p><strong>Campos de Grupo:</strong></p>
            <#list fieldsMap?keys as fieldKey>
              <#assign field = fieldsMap[fieldKey]>
              <#if field?has_content && field.getData()?has_content>
                <p>${fieldKey}: ${field.getData()?html}</p>
              </#if>
            </#list>
          </li>
        </#list>
      </ul>
    </div>
  </div>
<#else>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Sem Informações Disponíveis</h5>
      <p class="card-text">Desculpe, não há informações disponíveis neste momento.</p>
    </div>
  </div>
</#if>
