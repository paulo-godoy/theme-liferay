<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<div class="accordion" id="accordionExample_${Fieldset51216005.id?default('')}">
    <#if Fieldset51216005.getSiblings()?has_content>
        <#list Fieldset51216005.getSiblings() as cur_Fieldset51216005>
            <div class="accordion-item">
                <h2 class="accordion-header" id="heading${cur_Fieldset51216005_index}">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${cur_Fieldset51216005_index}" aria-expanded="true" aria-controls="collapse${cur_Fieldset51216005_index}">
                        <#if (cur_Fieldset51216005.Text25684907.getData())??>
                            ${cur_Fieldset51216005.Text25684907.getData()}
                        </#if>
                    </button>
                </h2>
                <div id="collapse${cur_Fieldset51216005_index}" class="accordion-collapse collapse show" aria-labelledby="heading${cur_Fieldset51216005_index}" data-bs-parent="#accordionExample_${Fieldset51216005.id?default('')}">
                    <div class="accordion-body">
                        <strong>
                            <#if (cur_Fieldset51216005.Fieldset10039132.RichText37560603.getData())??>
                                ${cur_Fieldset51216005.Fieldset10039132.RichText37560603.getData()}
                            </#if>
                        </strong>
                    </div>
                </div>
            </div>
        </#list>
    </#if>
</div>