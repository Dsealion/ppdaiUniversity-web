package com.ppdai.university.commons;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by zhangshibo on 2017/9/3.
 */
public class MapUtil {

    /**
     * 构建map
     * @param array
     * @return
     */
    public static Map<String,Object> buildMap(Object ...array){
        Map<String,Object> map = new HashMap<>();
        for( int i = 0 ; (i+1) < array.length ; i+=2 ){
            map.put(array[i]+"",array[i+1]);
        }
        return map;
    }


    /**
     * 构建map
     * @param array
     * @return
     */
    public static  Map<String,String> buildMap(String ...array){
        Map<String,String> map = new HashMap<>();
        for( int i = 0 ; (i+1) < array.length ; i+=2 ){
            map.put(array[i],array[i+1]);
        }
        return map;
    }


}
