using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1DV406_Labb1_3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            StartTempBox.Focus();// Sätter fokus på textrutan när sidan ladats klart 
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            if (IsValid)// If satsen körs om valideringarna inte hitat något fel 
            {
                ConvTempTable.Visible = true;// visar Resultat tabellen

                var startTemp = int.Parse(StartTempBox.Text);//In matade värden konverteras till inte och tilldelas 

                var endTemp = int.Parse(EndTempBox.Text);// In matade värden konverteras till inte och tilldelas 

                var tempInterval = int.Parse(TempIntervalBox.Text);// In matade värden konverteras till inte och tilldelas 


                if (FToCButton.Checked)// ändrar från °C & °F till °F & °C i tabellrubriken om man vallt att konvertering från Fahrenheit
                {
                    HeaderCell1.Text = "°F";
                    HeaderCell2.Text = "°C";
                }

                else if (CToFButton.Checked)// ändrar från °F & °C till °C & °F i tabellrubriken om man vallt att konvertering från Celsius
                {
                    HeaderCell1.Text = "°C";
                    HeaderCell2.Text = "°F";
                }
         
                for (int i = startTemp; i <= endTemp; i += tempInterval)// Loopar igenom de in matade värdena för att bestämma antalet rader och kolumner i tabellen
                {
                    TableRow tRow = new TableRow();// skapar en kolumn
                    TableCell[] arr = new TableCell[] { new TableCell(), new TableCell() };// skapar celler 
                   
                    ConvTempTable.Rows.Add(tRow);// läger till rad i tabellen
                    tRow.Cells.AddRange(arr);// läger till celler i tabellen

                    arr[0].Text = String.Format("{0}", i);// läger in de ike konverterar värden i cellen 
                    if (CToFButton.Checked)// konverterar från Celsius till Fahrenheit om man markerat Fahrenheit boxen 
                    {
                        arr[1].Text = String.Format("{0}", Model.TemperatureConverter.CelsiusToFahrenheit(i));
                    }
                    else if (FToCButton.Checked)// konverterar från Fahrenheit till Celsius om man markerat Celsius boxen 
                    {
                        arr[1].Text = String.Format("{0}", Model.TemperatureConverter.FahrenheitToCelsius(i));
                    }
                }
            }
        }

    }
}