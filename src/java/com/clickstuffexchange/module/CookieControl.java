/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.module;

import javax.servlet.http.Cookie;

/**
 *
 * @author Geoffrey
 */
public class CookieControl {
    Cookie cookies[];
    public CookieControl(Cookie c[])
    {
        cookies = c;
    }
    
    public boolean isExistValue(String key, String value){
        if(cookies!=null)
        {
            for(int i = 0; i < cookies.length; ++i)
            {
                if(cookies[i].getName().equals(key))
                {
                    if(cookies[i].getValue().equals(value))
                    {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }
    
    public boolean isExistKey(String key){
        if(cookies!=null)
        {
            for(int i = 0; i < cookies.length; ++i)
            {
                if(cookies[i].getName().equals(key))
                {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
    
    public String getValue(String key){
        if(cookies != null)
        {
            for(int i = 0; i < cookies.length; ++i)
            {
                if(cookies[i].getName().equals(key))
                {
                    return cookies[i].getValue();
                }
            }
            return "";
        }
        return "";
    }
            
}
