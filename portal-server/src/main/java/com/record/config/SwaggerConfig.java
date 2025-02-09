package com.record.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.*;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.contexts.SecurityContext;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.List;

import static java.util.Collections.singletonList;

/**
 * Swagger
 * 1、注释中的 2、3 分别代表 Swagger 的版本，对应 pom.xml
 * 2、关于更多的信息，请参考 微信公众号【京茶吉鹿】
 */
@Configuration
@EnableSwagger2  // 2
// @EnableOpenApi      // 3
public class SwaggerConfig {

    @Bean
    public Docket createRestApi(){
        return new Docket(DocumentationType.SWAGGER_2)  // 2
                // return new Docket(DocumentationType.OAS_30)  // 3
                .pathMapping("/")
                .enable(true)
                .host("localhost:8888")
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.record.controller"))
                .paths(PathSelectors.any())
                .build()
                // .protocols(newHashSet("https","http"))
                .securitySchemes(singletonList(apiKey()))
                .securityContexts(singletonList(securityContext()));
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("四川XXXX有限公司")
                .description("四川XXXX有限公司——接口文档")
                .contact(new Contact("京茶吉鹿", "http:localhost:8888/doc.html", "jc.jingchao@qq.com"))
                .version("1.0.0")
                .termsOfServiceUrl("http://localhost:8888")
                .build();
    }

    private ApiKey apiKey(){
        return new ApiKey("Authorization", "Authorization", "Header");
    }

    private SecurityContext securityContext(){
        return SecurityContext.builder()
                .securityReferences(defaultAuth())
                .forPaths(PathSelectors.regex("/hello/.*"))
                .build();
    }

    List<SecurityReference> defaultAuth() {
        AuthorizationScope authorizationScope = new AuthorizationScope("global", "accessEverything");
        AuthorizationScope[] authorizationScopes = new AuthorizationScope[1];
        authorizationScopes[0] = authorizationScope;
        return singletonList(
                new SecurityReference("Authorization", authorizationScopes));
    }
}
