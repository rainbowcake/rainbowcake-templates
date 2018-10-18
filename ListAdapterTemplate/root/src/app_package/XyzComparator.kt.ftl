<#if packageName != "">
    package ${packageName}
</#if>

import android.support.v7.util.DiffUtil
<#if presenterName?has_content>
import ${packageName}.${presenterName}.${modelName}
</#if>

object ${modelName}Comparator : DiffUtil.ItemCallback<${modelName}>() {

    override fun areItemsTheSame(oldItem: ${modelName}, newItem: ${modelName}): Boolean {
        return oldItem.id == newItem.id
    }

    override fun areContentsTheSame(oldItem: ${modelName}, newItem: ${modelName}): Boolean {
        return oldItem == newItem
    }

}
