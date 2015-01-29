using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1DV406_Labb1_3.Model
{
    public class TemperatureConverter
    {
    
        public static int CelsiusToFahrenheit(int degreesC)// Formel för konvertering från Celsius till Fahrenheit 
        {
            return Convert.ToInt32(degreesC * 1.8 + 32);
        }

    
        public static int FahrenheitToCelsius(int degreesF)// Formel för konvertering från Fahrenheit till Celsius 
        {
            return Convert.ToInt32((degreesF - 32) * 5 / 9);
        }
    }
}