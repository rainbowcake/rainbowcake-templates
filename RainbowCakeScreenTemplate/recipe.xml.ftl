<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/ArchFragment.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenName?lower_case}/${screenName}Fragment.kt"/>
    <instantiate from="src/app_package/ArchViewState.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenName?lower_case}/${screenName}ViewState.kt"/>
    <instantiate from="src/app_package/ArchViewModel.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenName?lower_case}/${screenName}ViewModel.kt"/>
    <instantiate from="src/app_package/ArchPresenter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenName?lower_case}/${screenName}Presenter.kt"/>

    <instantiate from="src/app_package/fragment_arch.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/fragment_${camelCaseToUnderscore(screenName)}.xml" />

    <open file="${srcOut}/${screenName?lower_case}/${screenName}Fragment.kt"/>

</recipe>
