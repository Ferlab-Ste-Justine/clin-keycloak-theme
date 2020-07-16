<#import "template.ftl" as layout>
<#import "fragments.ftl" as fragments>

<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        <@fragments.clinNavigation />
    <#elseif section = "form-start">
        <main role="main" style="background-image: url('${url.resourcesPath}/img/background-home.jpg')">
            <section class="pt-3">
                <div class="login-clean container pt-5">
                    <div class="row justify-content-center">
                        <div class="col-md-5 pr-3">
                            <div class="mb-5 pb-1 pt-1 bg-white rounded shadow-lg">
                                <form class="m-5" id="kc-reset-password-form" action="${url.loginAction}" method="post" autocomplete="off">
                                    <p class="text-right">
                                        <a class="create-account" href="#" style="color: #095797;">${msg("login.form.create-account")}</a>
                                    </p>
                                    <h3>${msg("login.form.forgot-password")}</h3>
                                    <div class="intro-text">${msg("emailInstruction")}</div>
    <#elseif section = "form-end">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <#if auth?has_content && auth.showUsername()>
                                                <input tabindex="1" id="username" name="username" value="${auth.attemptedUsername}" class="form-control border-right-0" type="email" name="email" placeholder="${msg("login.form.email")}" autofocus autocomplete="off"/>
                                            <#else>
                                                <input tabindex="1" id="username" name="username" class="form-control border-right-0" type="email" name="email" placeholder="${msg("login.form.email")}" autofocus autocomplete="off"/>
                                            </#if>

                                            <span class="input-group-append border-left-0 align-self-center pr-2" style="color: rgba(35,55,80,.38);">
                                              <svg fill="currentColor" height="16" width="16" viewBox="0 0 24 24" style="width: 1.5rem; height: 1.5rem">
                                                  <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"></path>
                                              </svg>
                                            </span>
                                        </div>
                                        <a tabindex="2" class="forgot" href="${url.loginUrl}" style="color: #095797;">${kcSanitize(msg("backToLogin"))?no_esc}</a>
                                    </div>
                                    <div class="form-group">
                                        <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                                        <button tabindex="3" class="btn btn-primary btn-block" type="submit">${msg("reset-password.form.submit")}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-7 pl-4">
                            <@fragments.clinPartners />
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <@fragments.clinFooter />
        <@fragments.clinFooterScripts />
    </#if>
</@layout.registrationLayout>