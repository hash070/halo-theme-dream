<footer class="footer">
    <div class="container">
        <div class="level">
            <div>
                <a class="logo-title" href="${context!}">
                    <#if blog_logo?? && blog_logo!=''>
                        <img class="logo-img" src="${blog_logo!}" alt="${blog_title!}" height="28">
                        <img class="logo-img-dark"
                             src="<#if settings.night_logo?? && settings.night_logo!=''>${settings.night_logo!}<#else>${blog_logo!}</#if>"
                             alt="${blog_title!}" height="28">
                    <#else>
                        ${blog_title!}
                    </#if>
                </a>
                <p>
                    &copy; ${.now?string('yyyy')} ${user.nickname!}  Powered by <a href="https://halo.run/"
                                                                                         target="_blank">Halo</a> & <a
                            href="https://github.com/nineya/halo-theme-dream" target="_blank">Dream</a>
                    <#if settings.record_number?? && settings.record_number!=''>
                        <br/>
                        <a href="http://beian.miit.gov.cn/publish/query/indexFirst.action"
                           target="_blank" rel="noopener noreferrer nofollow">${settings.record_number!}</a>
                    </#if>
                    <#if settings.record_number_ps?? && settings.record_number_ps!=''>
                        <br/>
                        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=${settings.record_number_ps!}"
                           target="_blank" rel="noopener noreferrer nofollow">公安备案：${settings.record_number_ps!}</a>
                    </#if>
                    <#if settings.website_time?? && settings.website_time!=''>
                        <br/>
                        <span id="websiteDay"></span><span id="websiteTime"></span>
                    </#if>
                    <#if settings.enable_busuanzi!true>
                        <br/><span id="busuanzi_container_site_uv">
                        <i class="fa fa-user" aria-hidden="true"></i>
						<span id="busuanzi_value_site_uv">0</span>个访客
					</span>
                        <span id="busuanzi_container_site_pv">
                        <i class="fa fa-bar-chart" aria-hidden="true"></i>
						<span id="busuanzi_value_site_pv">0</span>次访问
					</span>
                    </#if>
                    <br/>
                </p>
                <@global.footer_info />
            </div>
            <div>
                ${settings.links_footer!}
            </div>
        </div>
    </div>
</footer>