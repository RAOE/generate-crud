package com.Generator.anon;


import java.lang.annotation.*;

/**
 * 该注解被注解到类上
 * 在运行时加载
 * 主要是通过该注解 实现实体层和数据库表的对应
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Table {
    String value() default "";
}
