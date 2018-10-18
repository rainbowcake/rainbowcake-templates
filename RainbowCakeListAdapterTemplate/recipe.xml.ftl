<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/XyzAdapter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${modelName}Adapter.kt"/>
    <instantiate from="src/app_package/XyzComparator.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${modelName}Comparator.kt"/>

    <instantiate from="src/app_package/row_xyz.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/row_${camelCaseToUnderscore(modelName)}.xml" />

    <open file="${srcOut}/${modelName}Adapter.kt"/>

</recipe>
