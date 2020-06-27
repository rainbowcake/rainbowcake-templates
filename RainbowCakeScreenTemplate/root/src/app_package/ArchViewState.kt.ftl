<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

<#if viewstatetype == 'data'>
data class ${screenName}ViewState(val data: String = "")
<#elseif viewstatetype == 'sealed'>
sealed class ${screenName}ViewState

object Initial : ${screenName}ViewState()

object Loading : ${screenName}ViewState()

data class ${screenName}Ready(val data: String = "") : ${screenName}ViewState()
</#if>
