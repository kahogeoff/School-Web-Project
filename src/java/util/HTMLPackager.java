/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author geoffreycheung
 */
public class HTMLPackager {
    public String div(String content, String attributes)
    {
        String _header = "<div>";
        String _footer = "</div>";
        if(!attributes.isEmpty())
        {
            _header = "<div "+attributes+">";
        }
        return _header + content + _footer;
    }
}
