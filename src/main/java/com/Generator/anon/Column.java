package com.Generator.anon;


import java.lang.annotation.*;

/**
 * 该注解可以注解到方法上
 * 在项目运行时加载
 * 主要是通过该注解获得数据库的列名 与实体类对应
        */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Column {
    String value() default "";
}
