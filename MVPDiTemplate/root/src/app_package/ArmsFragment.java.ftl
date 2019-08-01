package ${fragmentPackageName};


import android.support.v4.app.Fragment;


import ${packageName}.app.base.BaseFragment;

import ${componentPackageName}.Dagger${pageName}Component;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

import ${packageName}.R;


<#import "root://activities/MVPDiTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Fragment extends BaseFragment<${pageName}Presenter> implements ${pageName}Contract.View{

    public static ${pageName}Fragment newInstance() {
        ${pageName}Fragment fragment = new ${pageName}Fragment();
        return fragment;
    }

    @Override
    public void initInject() {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .build()
                .inject(this);
    }

    @Override
    public void initVariable() {

    }

}
