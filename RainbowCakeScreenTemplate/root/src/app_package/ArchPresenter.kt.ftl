<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import co.zsmb.rainbowcake.withIOContext
import javax.inject.Inject

class ${screenName}Presenter @Inject constructor() {

    suspend fun getData(): String = withIOContext {
        ""
    }

}
