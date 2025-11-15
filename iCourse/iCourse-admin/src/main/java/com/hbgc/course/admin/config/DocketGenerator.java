package com.hbgc.course.admin.config;

import com.hbgc.course.admin.utils.Constants;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

public class DocketGenerator {

    private String title =null;

    private String description =null;

    private String groupName =null;

    private String path =null;

    public DocketGenerator title(String title) {
        this.title = title;
        return this;
    }

    public DocketGenerator description(String description) {
        this.description = description;
        return this;
    }

    public DocketGenerator groupName(String groupName) {
        this.groupName = groupName;
        return this;
    }

    public DocketGenerator path(String path) {
        this.path = path;
        return this;
    }

    public Docket build(){
        return createDocket(this.groupName,
                Constants.CONTROLLER_PACKAGE,
                this.path,
                apiInfo());
    }

    public ApiInfo apiInfo(){
        return new ApiInfoBuilder()
                .title(this.title)
                .description(this.description)
                .termsOfServiceUrl("")
                .version("1.0")
                .build();
    }

    private Docket createDocket(String groupName, String basePackage, String path, ApiInfo apiInfo){
        return new Docket(DocumentationType.OAS_30)
                .apiInfo(apiInfo)
                .groupName(groupName)
                .select()
                .apis(RequestHandlerSelectors.basePackage(basePackage))
                .paths(PathSelectors.ant(path))
                .build();
    }
}
