<div class="banner">
    <div class="container">
        <#if Banners.getSiblings()?has_content>
            <#list Banners.getSiblings() as cur_Banners>
                <div class="row">
                    <div class="col-lg-6">
                        <#if (Banners.TituloBanner.getData())??>
                            <h1>${Banners.TituloBanner.getData()}</h1>
                        </#if>

                        <#if (Banners.TextoBanner.getData())??>
                            <p>${Banners.TextoBanner.getData()}</p>
                        </#if>
                        <button class="btn btn-primary">Saiba Mais</button>
                    </div>
                </div>
            </#list>
        </#if>
    </div>
</div>



	
	



		
	