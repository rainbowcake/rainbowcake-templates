<?xml version="1.0"?>
<globals>
    <global id="resOut" value="${resDir}"/>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}"/>

    <global id="rootPackage" value="${packageName?substring(0, packageName?index_of(".ui"))}"/>
</globals>
