<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import android.os.Bundle
import android.view.View
import ${rootPackage}.R
import ${rootPackage}.base.BaseFragment
import ${rootPackage}.base.getViewModelFromFactory

class ${screenName}Fragment : BaseFragment<${screenName}ViewState, ${screenName}ViewModel>() {

    override fun provideViewModel() = getViewModelFromFactory()
    override fun getViewResource() = R.layout.fragment_${camelCaseToUnderscore(screenName)}

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        // TODO Setup views
    }

    override fun onStart() {
        super.onStart()

        viewModel.load()
    }

    override fun render(viewState: ${screenName}ViewState) {
        // TODO Render state
    }

}
