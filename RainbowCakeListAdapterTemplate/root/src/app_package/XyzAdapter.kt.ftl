<#if packageName != "">
    package ${packageName}
</#if>

<#if useAndroidX == false>
import android.support.v7.recyclerview.extensions.ListAdapter
import android.support.v7.widget.RecyclerView
</#if>
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if useAndroidX == true>
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
</#if>
import ${rootPackage}.R
<#if presenterName?has_content>
import ${packageName}.${presenterName}.${modelName}
</#if>
import ${packageName}.${modelName}Adapter.${modelName}ViewHolder
import kotlinx.android.synthetic.main.row_${camelCaseToUnderscore(modelName)}.*

class ${modelName}Adapter : ListAdapter<${modelName}, ${modelName}ViewHolder>(${modelName}Comparator) {
    <#if withClickListener == true>

    var listener: Listener? = null
    </#if>

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${modelName}ViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.row_${camelCaseToUnderscore(modelName)}, parent, false)
        return ${modelName}ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ${modelName}ViewHolder, position: Int) {
        val ${modelName?lower_case} = getItem(position)
        <#if withClickListener == true>
        holder.${modelName?lower_case} = ${modelName?lower_case}
        </#if>

        // TODO set View data from ${modelName?lower_case}
    }

    inner class ${modelName}ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

        // TODO create View properties

        <#if withClickListener == true>
        var ${modelName?lower_case}: ${modelName}? = null

        init {
            itemView.setOnClickListener {
                ${modelName?lower_case}?.let { listener?.on${modelName}Clicked(it) }
            }
        }
        </#if>
    }
    <#if withClickListener == true>

    interface Listener {
        fun on${modelName}Clicked(${modelName?lower_case}: ${modelName})
    }
    </#if>

}
