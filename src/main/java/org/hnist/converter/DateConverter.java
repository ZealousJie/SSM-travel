package org.hnist.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

//不要实现错接口了 仔细看 Converter
public class DateConverter implements Converter<String,Date> {

    public Date convert(String dateStr) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date=format.parse(dateStr); //将满足规范的字符串转换为 date类型数据
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
