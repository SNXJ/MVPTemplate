package ${modulePackageName};

import ${presenterPackageName}.${pageName}Presenter;

import dagger.Module;
import dagger.Provides;


<#import "root://activities/MVPDiTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
@Module
public  class ${pageName}Module {
     @Provides
        public ${pageName}Presenter provides${pageName}Presenter() {
            return new ${pageName}Presenter();
        }
}