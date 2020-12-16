<#import "template.ftl" as layout>
<#import "fragments.ftl" as fragments>

<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "header">
        <@fragments.clinNavigation />
    <#elseif section = "form-start">
        <main role="main" style="background-image: url('${url.resourcesPath}/img/background-home.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center;">
            <section class="pt-3">
                <div class="login-clean container pt-5 pb-4">
                    <div class="row justify-content-center">
                        <div class="col-md-5 pr-3">
                            <div class="mb-5 pb-1 pt-1 bg-white rounded shadow-lg">
                                <form class="m-5" id="kc-form-registration" onsubmit="registration.disabled = true; return true;" action="${url.registrationAction}" method="post" autocomplete="off">
                                    <p class="text-right">
                                        <a class="create-account" href="${url.loginUrl}">${msg("registration.form.login-account")}</a>
                                    </p>
                                    <h3 class="form-title">${msg("registration.form.title")}</h3>
                                    <p class="intro-text">${msg("registration.form.instructions")}</p>
    <#elseif section = "form-end">
                                    <div class="form-group">
                                        <label for="firstName">${msg("registration.form.firstName")}</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="firstName" name="firstName" value="${(register.formData.firstName!'')}" autofocus aria-describedby="firstName" required>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="firstName_icon">
                                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 0.333359C5.56004 0.333359 0.333374 5.56002 0.333374 12C0.333374 18.44 5.56004 23.6668 12 23.6668C18.44 23.6668 23.6668 18.44 23.6668 12C23.6668 5.56002 18.44 0.333359 12 0.333359ZM12 3.83336C13.9368 3.83336 15.5 5.39668 15.5 7.33336C15.5 9.27002 13.9368 10.8334 12 10.8334C10.0634 10.8334 8.50004 9.27002 8.50004 7.33336C8.50004 5.39668 10.0634 3.83336 12 3.83336ZM5.00004 16.6434C6.50504 18.9068 9.08337 20.4 12 20.4C14.9168 20.4 17.495 18.9068 19 16.6434C18.965 14.3218 14.3218 13.05 12 13.05C9.6667 13.05 5.03504 14.3218 5.00004 16.6434Z"/>
                                                  </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="lastName">${msg("registration.form.lastName")}</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="lastName" name="lastName" value="${(register.formData.lastName!'')}" autofocus aria-describedby="lastName" required>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="lastName_icon">
                                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 0.333359C5.56004 0.333359 0.333374 5.56002 0.333374 12C0.333374 18.44 5.56004 23.6668 12 23.6668C18.44 23.6668 23.6668 18.44 23.6668 12C23.6668 5.56002 18.44 0.333359 12 0.333359ZM12 3.83336C13.9368 3.83336 15.5 5.39668 15.5 7.33336C15.5 9.27002 13.9368 10.8334 12 10.8334C10.0634 10.8334 8.50004 9.27002 8.50004 7.33336C8.50004 5.39668 10.0634 3.83336 12 3.83336ZM5.00004 16.6434C6.50504 18.9068 9.08337 20.4 12 20.4C14.9168 20.4 17.495 18.9068 19 16.6434C18.965 14.3218 14.3218 13.05 12 13.05C9.6667 13.05 5.03504 14.3218 5.00004 16.6434Z"/>
                                                  </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="username">${msg("registration.form.username")}</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="username" name="username" value="${(register.formData.username!'')}" autofocus aria-describedby="username" required>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="username_icon">
                                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 0.333359C5.56004 0.333359 0.333374 5.56002 0.333374 12C0.333374 18.44 5.56004 23.6668 12 23.6668C18.44 23.6668 23.6668 18.44 23.6668 12C23.6668 5.56002 18.44 0.333359 12 0.333359ZM12 3.83336C13.9368 3.83336 15.5 5.39668 15.5 7.33336C15.5 9.27002 13.9368 10.8334 12 10.8334C10.0634 10.8334 8.50004 9.27002 8.50004 7.33336C8.50004 5.39668 10.0634 3.83336 12 3.83336ZM5.00004 16.6434C6.50504 18.9068 9.08337 20.4 12 20.4C14.9168 20.4 17.495 18.9068 19 16.6434C18.965 14.3218 14.3218 13.05 12 13.05C9.6667 13.05 5.03504 14.3218 5.00004 16.6434Z"/>
                                                  </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="email">${msg("registration.form.email")}</label>
                                        <div class="input-group">
                                            <input type="email" class="form-control" id="email" name="email" value="${(register.formData.email!'')}" placeholder="${msg("registration.form.email.placeholder")}" autofocus aria-describedby="email" required>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="email_icon">
                                                    <svg fill="currentColor" height="16" width="16" viewBox="0 0 24 24" style="width: 1.5rem; height: 1.5rem">
                                                      <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"></path>
                                                  </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    

                                    <div class="form-group">
                                        <label for="password">${msg("registration.form.password")}</label>
                                        <div class="input-group">
                                            <input type="password" class="form-control" id="password" name="password" value="${(register.formData.password!'')}" autofocus aria-describedby="password" required>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="password_icon">
                                                  <svg fill="currentColor" height="16" width="16" viewBox="0 0 24 24" style="width: 1.5rem; height: 1.5rem">
                                                    <path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"></path>
                                                  </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password-confirm">${msg("registration.form.passwordConfirm")}</label>
                                        <div class="input-group">
                                            <input type="password" class="form-control" id="password-confirm" name="password-confirm" value="${(register.formData.passwordConfirm!'')}" autofocus aria-describedby="password-confirm" required>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="password-confirm_icon">
                                                  <svg fill="currentColor" height="16" width="16" viewBox="0 0 24 24" style="width: 1.5rem; height: 1.5rem">
                                                    <path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"></path>
                                                  </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                                        <button tabindex="4" class="btn btn-primary btn-block" type="submit">${msg("registration.form.register")}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-7 pl-5 about">
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