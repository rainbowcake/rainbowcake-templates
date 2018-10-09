<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import hu.autsoft.rainbowcake.base.JobViewModel
import javax.inject.Inject

class ${screenName}ViewModel @Inject constructor(
        private val ${screenName?uncap_first}Presenter: ${screenName}Presenter
<#if viewstatetype == 'data'>
) : JobViewModel<${screenName}ViewState>(${screenName}ViewState()) {
<#elseif viewstatetype == 'sealed'>
) : JobViewModel<${screenName}ViewState>(Loading) {
</#if>

    fun load() = execute {
<#if viewstatetype == 'data'>
    viewState = ${screenName}ViewState(${screenName?uncap_first}Presenter.getData())
<#elseif viewstatetype == 'sealed'>
    viewState = ${screenName}Ready(${screenName?uncap_first}Presenter.getData())
</#if>
    }

}
