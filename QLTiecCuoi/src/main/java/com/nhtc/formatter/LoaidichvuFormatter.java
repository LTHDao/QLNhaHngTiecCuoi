/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.formatter;

import com.nhtc.pojo.Loaidichvu;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;


/**
 *
 * @author Minh
 */
public class LoaidichvuFormatter implements Formatter<Loaidichvu>{

    @Override
    public String print(Loaidichvu t, Locale locale) {
        return String.valueOf(t.getIdloaidichvu());
    }

    @Override
    public Loaidichvu parse(String loaidichvuID, Locale locale) throws ParseException {
        Loaidichvu l = new Loaidichvu();
        l.setIdloaidichvu(Integer.parseInt(loaidichvuID));
        return l;
    }

}
