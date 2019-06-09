<#if packageName != "">
    package ${packageName}.${screenName?lower_case}
</#if>

import android.os.Bundle
import android.view.View
import co.zsmb.rainbowcake.base.RainbowCakeFragment
<#if disolution == 'dagger'>
import co.zsmb.rainbowcake.dagger.getViewModelFromFactory
</#if>
<#if fragmentArgument == true>
import co.zsmb.rainbowcake.extensions.applyArgs
import co.zsmb.rainbowcake.extensions.requireLong
import co.zsmb.rainbowcake.extensions.requireArguments
</#if>
<#if disolution == 'koin'>
import co.zsmb.rainbowcake.koin.getViewModelFromFactory
</#if>
import ${rootPackage}.R

<#if fragmentArgument == true>
class ${screenName}Fragment : RainbowCakeFragment<${screenName}ViewState, ${screenName}ViewModel> {
<#else>
class ${screenName}Fragment : RainbowCakeFragment<${screenName}ViewState, ${screenName}ViewModel>() {
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
            return ${screenName}Fragment().applyArgs {
                putLong(SOME_ID, someId)
            }
        }
    }

    private var someId: Long = 0

    private fun initArguments() {
        someId = requireArguments().requireLong(SOME_ID)
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
