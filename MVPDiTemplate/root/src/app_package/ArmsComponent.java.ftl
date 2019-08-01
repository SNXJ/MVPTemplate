package ${componentPackageName};
import ${modulePackageName}.${pageName}Module;
<#if needActivity && needFragment>
import ${activityPackageName}.${pageName}Activity;
import ${fragmentPackageName}.${pageName}Fragment;
<#elseif needActivity>
import ${activityPackageName}.${pageName}Activity;
<#elseif needFragment>
import ${fragmentPackageName}.${pageName}Fragment;
</#if>
import dagger.Component;
<#import "root://activities/MVPDiTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
@Component(modules = ${pageName}Module.class)
public interface ${pageName}Component {
  <#if needActivity && needFragment>
	void inject(${pageName}Activity activity);
	void inject(${pageName}Fragment fragment);
  <#elseif needActivity || needFragment>
    void inject(<#if needFragment>${pageName}Fragment fragment<#else>${pageName}Activity activity</#if>);
</#if>
}