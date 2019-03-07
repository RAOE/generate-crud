package test;

import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class Test1 {

    public static List<String> list= Test1.init();

    @Test
    public void test1()
    {
        System.out.println("测试开始");
        System.out.println(list);
    }

    public static List init()
    {
        list=new ArrayList<String>();
        list.add("1");
        list.add("2");
        list.add("3");
        return list;
    }

}
