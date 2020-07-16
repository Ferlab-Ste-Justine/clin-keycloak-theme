<#import "template.ftl" as layout>
<#import "fragments.ftl" as fragments>

<@layout.registrationLayout displayMessage=false; section>
    <#if section = "form">
        <@fragments.clinNavigation />
            <main role="main" style="background-image: url('${url.resourcesPath}/img/background-home.jpg');">
                <div class="container">
                    <div class="row justify-content-center">
                        <div id="message" class="col-md-6 py-5">
                            <div class="card" >
                                <div class="card-body" >
                                    <h3 class="card-title">
                                        Ooooooopps!
                                    </h3>
                                    <div class="card-text border-bottom">
                                        <p class="instruction">${message.summary?no_esc}</p>
                                    </div>

                                    <#if client?? && client.baseUrl?has_content>
                                        <div id="kc-form-buttons" class="pt-3">
                                            <p><a id="backToApplication" class="card-link" href="${client.baseUrl}">${msg("backToApplication")?no_esc}</a></p>
                                        </div>
                                    <#else>
                                        <div id="kc-form-buttons" class="pt-3">
                                            <p>${msg("error.needAssistance")?no_esc}</p>
                                        </div>
                                    </#if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        <@fragments.clinFooter />
        <@fragments.clinFooterScripts />
    </#if>
</@layout.registrationLayout>