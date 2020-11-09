package com.bytecode.catalogodeapp.component;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("utilsComponent")
public class UtilsComponent {
    @Value("${app.config.text.short}")
    private int textLength;

    public String shortTextDefault(String text){
        if (text.length() <= textLength){
            return text;
        } else {
            return text.substring(0, textLength) + " ...";
        }
    }

    public String shortText(String text, int textLength){
        if (text.length() <= textLength){
            return text;
        } else {
            return text.substring(0, textLength) + "...";
        }
    }
}
