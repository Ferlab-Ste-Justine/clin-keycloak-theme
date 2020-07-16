<#macro clinNavigation>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #095797;color: #ffffff;">
            <img class="navbar-brand" src="${url.resourcesPath}/img/logos/cqgc-white.svg" style="height: 2.65rem">

            <#if realm.internationalizationEnabled  && locale.supported?size gt 1>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown" style="color: #aec8dd;">
                        <a class="nav-link dropdown d-flex" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: #aec8dd;">
                            <i fill="currentColor">
                                <svg fill="currentColor" height="16" width="16" viewBox="0 0 24 24" style="width: 1.2rem; height: 1.2rem">
                                    <path d="M12.87 15.07l-2.54-2.51.03-.03c1.74-1.94 2.98-4.17 3.71-6.53H17V4h-7V2H8v2H1v1.99h11.17C11.5 7.92 10.44 9.75 9 11.35 8.07 10.32 7.3 9.19 6.69 8h-2c.73 1.63 1.73 3.17 2.98 4.56l-5.09 5.02L4 19l5-5 3.11 3.11.76-2.04zM18.5 10h-2L12 22h2l1.12-3h4.75L21 22h2l-4.5-12zm-2.62 7l1.62-4.33L19.12 17h-3.24z"></path>
                                </svg>
                            </i>
                            <span class="sr-only">Change language</span>
                            <span class="p-1 align-self-center lang-change">${locale.current[0..1]}</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <#list locale.supported as l>
                                <a class="dropdown-item" href="${l.url}">${l.label}</a>
                            </#list>
                        </div>
                    </li>
                </ul>
            </#if>
        </nav>
    </header>
</#macro>

<#macro clinPartners>
    <div class="mb-5 p-md-5 pt-2">
        <img class="cqgc-color-logo" src="${url.resourcesPath}/img/logos/cqgc-color.svg"/>
        <div class="lead pt-4">
            ${msg("login.partners.lead")}
        </div>
        <div class="partenaire pt-2">
            <img height="42" alt="${msg("login.partner.chust")}" src="${url.resourcesPath}/img/logos/chujs-color.svg">
            <img height="75" alt="${msg("login.partner.chum")}" src="${url.resourcesPath}/img/chum.png">
            <img height="40" alt="${msg("login.partner.jewish")}" src="${url.resourcesPath}/img/logos/hgj.svg">
            <img height="60" alt="${msg("login.partner.chuq")}" src="${url.resourcesPath}/img/chu.png">
            <img height="30" alt="${msg("login.partner.cardio")}" src="${url.resourcesPath}/img/icm.png">
            <img height="45" alt="${msg("login.partner.chus")}" src="${url.resourcesPath}/img/chus.gif">
            <img height="35" alt="${msg("login.partner.hmr")}" src="${url.resourcesPath}/img/hmr.gif">
            <img height="20" alt="${msg("login.partner.mcgill")}" src="${url.resourcesPath}/img/logos/mcgill.svg">
        </div>
    </div>
</#macro>

<#macro clinFooter>
    <section>
        <div class="footer-clean">
            <div class="pt-4 pb-4" style="background-color: #095797;">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-sm-6 col-md-3 item" style="color: #ffffff;">
                            <h3>${msg("login.footer.info-and-services")}</h3>
                            <ul>
                                <li><a href="#">${msg("login.footer.info-and-services.documentation")}</a></li>
                                <li><a href="#">${msg("login.footer.info-and-services.faq")}</a></li>
                                <li><a href="#">${msg("login.footer.info-and-services.services")}</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 col-md-5 item" style="color: #ffffff;">
                            <h3>${msg("login.footer.contact-us")}</h3>
                            <ul>
                                <li><a href="#">${msg("login.footer.contact-us.phone")}</a></li>
                                <li><a href="#">${msg("login.footer.contact-us.email")}</a></li>
                                <li><a href="#">${msg("login.footer.contact-us.address")}</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-0 col-md-4 d-none d-md-block align-self-center align-middle item social" style="color: #ffffff;">
                            <img style="height: 57px" src="${url.resourcesPath}/img/logos/chujs-white.svg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-basic pt-3">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-sm-12 col-md-8">
                        <ul class="list-inline text-left" style="font-size: 13px;">
                            <li class="list-inline-item"><a href="#">${msg("login.footer.accessibility")}</a></li>
                            <li class="list-inline-item"><a href="#">${msg("login.footer.access")}</a></li>
                            <li class="list-inline-item"><a href="#">${msg("login.footer.privacy")}</a></li>
                            <li class="list-inline-item"><a href="#">${msg("login.footer.about")}</a></li>
                            <li class="list-inline-item"></li>
                        </ul>
                    </div>
                    <div class="col-sm-0 col-md-4 d-none d-md-block text-right"><img src="${url.resourcesPath}/img/logos/msssq.svg"></div>
                </div>
            </div>
        </div>
        <div class="footer-basic">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <p class="copyright">CHU Sainte-Justine © <span id="date"></span></p>
                </div>
            </div>
        </div>
    </section>
</#macro>

<#macro clinFooterScripts>
    <script src="${url.resourcesPath}/js/jquery-3.5.1.slim.min.js"></script>
    <script src="${url.resourcesPath}/js/popper-1.16.0.min.js"></script>
    <script src="${url.resourcesPath}/js/bootstrap-4.5.0.min.js"></script>
    <script>
      $('#date').html((new Date()).getFullYear())
    </script>
</#macro>
