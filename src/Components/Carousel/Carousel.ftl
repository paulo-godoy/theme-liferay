<div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <#list 0..(Fieldset61255941.getSiblings()?size - 1) as index>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="${index}"<#if index == 0> class="active"</#if> aria-label="Slide ${index + 1}"></button>
    </#list>
  </div>

  <div class="carousel-inner">
    <#if Fieldset61255941.getSiblings()?has_content>
      <#list Fieldset61255941.getSiblings() as cur_Fieldset61255941>
        <div class="carousel-item<#if cur_Fieldset61255941?index == 0> active</#if>">
          <#if cur_Fieldset61255941.Image47453927.getData()?has_content && cur_Fieldset61255941.Image47453927.getData() &&>
            <img class="d-block w-100" style="object-fit: cover;" alt="${cur_Fieldset61255941.Image47453927.getAttribute("alt")}" data-fileentryid="${cur_Fieldset61255941.Image47453927.getAttribute("fileEntryId")}" src="${cur_Fieldset61255941.Image47453927.getData()}" />
          </#if>
          <div class="carousel-caption d-none d-md-block">
            <h5>
              <#if cur_Fieldset61255941.Text20056261.getData()?has_content>
                ${cur_Fieldset61255941.Text20056261.getData()}
              </#if>
            </h5>
            <p>
              <#if cur_Fieldset61255941.RichText08148981.getData()?has_content>
                ${cur_Fieldset61255941.RichText08148981.getData()}
              </#if>
            </p>
          </div>
        </div>
      </#list>
    </#if>
  </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
