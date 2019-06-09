<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import co.zsmb.rainbowcake.withIOContext
<#if disolution == 'dagger'>
    import javax.inject.Inject
</#if>

<#if disolution == 'dagger'>
class ${screenName}Presenter @Inject constructor() {
<#elseif disolution == 'koin'>
class ${screenName}Presenter {
</#if>

    suspend fun getData(): String = withIOContext {
        ""
    }

}
