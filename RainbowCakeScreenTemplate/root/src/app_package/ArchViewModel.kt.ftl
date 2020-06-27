<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import co.zsmb.rainbowcake.base.RainbowCakeViewModel
<#if disolution == 'dagger'>
import javax.inject.Inject
</#if>

<#if disolution == 'dagger'>
class ${screenName}ViewModel @Inject constructor(
<#elseif disolution == 'koin'>
class ${screenName}ViewModel(
</#if>
        private val ${screenName?uncap_first}Presenter: ${screenName}Presenter
<#if viewstatetype == 'data'>
) : RainbowCakeViewModel<${screenName}ViewState>(${screenName}ViewState()) {
<#elseif viewstatetype == 'sealed'>
) : RainbowCakeViewModel<${screenName}ViewState>(Initial) {
</#if>

    fun load() = execute {
<#if viewstatetype == 'data'>
    viewState = ${screenName}ViewState(${screenName?uncap_first}Presenter.getData())
<#elseif viewstatetype == 'sealed'>
    viewState = ${screenName}Ready(${screenName?uncap_first}Presenter.getData())
</#if>
    }

}
