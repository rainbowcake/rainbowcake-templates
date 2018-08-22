<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import ${rootPackage}.withIOContext
import javax.inject.Inject

class ${screenName}Presenter @Inject constructor() {

    suspend fun getData(): String = withIOContext {
        ""
    }

}
