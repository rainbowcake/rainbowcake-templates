<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import android.os.Bundle
import android.view.View
import ${rootPackage}.R
import ${rootPackage}.base.BaseFragment
import ${rootPackage}.base.getViewModelFromFactory
import ${rootPackage}.util.extensions.getLongOrThrow
import ${rootPackage}.util.extensions.requireArguments
import ${rootPackage}.util.extensions.withArgs

<#if fragmentArgument == true>
class ${screenName}Fragment : BaseFragment<${screenName}ViewState, ${screenName}ViewModel> {
<#else>
class ${screenName}Fragment : BaseFragment<${screenName}ViewState, ${screenName}ViewModel>() {
</#if>

    override fun provideViewModel() = getViewModelFromFactory()
    override fun getViewResource() = R.layout.fragment_${camelCaseToUnderscore(screenName)}

    <#if fragmentArgument == true>
    //region Arguments
    @Suppress("ConvertSecondaryConstructorToPrimary")
    @Deprecated(message = "Use newInstance instead", replaceWith = ReplaceWith("${screenName}Fragment.newInstance()"))
    constructor()

    companion object {
        private const val SOME_ID = "SOME_ID"

        @Suppress("DEPRECATION")
        fun newInstance(someId: Long): ${screenName}Fragment {
            return ${screenName}Fragment().withArgs {
                putLong(SOME_ID, someId)
            }
        }
    }

    private var someId: Long = 0

    private fun initArguments() {
        someId = requireArguments().getLongOrThrow(SOME_ID)
    }
    //endregion
    </#if>
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        <#if fragmentArgument == true>
        initArguments()
        </#if>

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
