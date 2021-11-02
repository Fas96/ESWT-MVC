package com.example.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesLoad {

    private static volatile PropertiesLoad propertiesLoad=new PropertiesLoad();
    private PropertiesLoad(){}
    public static PropertiesLoad getInstance(){
        return propertiesLoad;
    }

    public static Properties loadLocalStrings() {
        try(InputStream input = PropertiesLoad.class.getClassLoader().getResourceAsStream("src/main/resources/localvariables.properties")){
            Properties prop = new Properties();
            prop.load(input);


            return prop;

        }catch (IOException ex) {
            ex.printStackTrace();
        }
        return null;
    }


}
