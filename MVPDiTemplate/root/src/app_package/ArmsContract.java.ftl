package ${contractPackageName};

import ${packageName}.app.base.IView;
import ${packageName}.app.base.IPresenter;
<#import "root://activities/MVPDiTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
public interface ${pageName}Contract {
    //对于经常使用的关于UI的方法可以定义到IView中
    interface View extends IView {

    }
    interface Presenter extends IPresenter<View>{
    }
}
