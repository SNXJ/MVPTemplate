package ${presenterPackageName};

import ${packageName}.app.base.BasePresenter;
import ${contractPackageName}.${pageName}Contract;
<#import "root://activities/MVPDiTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
public class ${pageName}Presenter extends BasePresenter<${pageName}Contract.View>implements ${pageName}Contract.Presenter{

    public ${pageName}Presenter () {

    }


}
