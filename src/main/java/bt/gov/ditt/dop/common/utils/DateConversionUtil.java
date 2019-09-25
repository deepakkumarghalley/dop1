package bt.gov.ditt.dop.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConversionUtil {


    public static String getDateInSpecificFormat(Date date, String format){
        String formattedDate = null;
        if(date!=null && format!=null){
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            formattedDate = sdf.format(date);
        }
        return formattedDate;
    }
}

