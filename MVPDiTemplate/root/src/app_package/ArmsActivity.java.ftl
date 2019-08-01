package ${activityPackageName};
import ${packageName}.app.base.BaseActivity;
import ${componentPackageName}.Dagger${pageName}Component;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;
import ${packageName}.R;
<#import "root://activities/MVPDiTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
public class ${pageName}Activity extends BaseActivity<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    public void initInject() {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .build()
                .inject(this);
    }

    @Override
    public int setContentView() {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void findViews() {

    }

}
