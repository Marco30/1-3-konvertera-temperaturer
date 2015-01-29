<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1DV406_Labb1_3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marco - Labb1.3</title>

    <link rel="stylesheet" href="Style.css" media="screen">
</head>
<body>
    <form id="form1" runat="server">

        <div id="inramning">



            <!-- text-->
            <asp:Label ID="Label3" runat="server" Text="Konvertera temperaturer"></asp:Label>

            <<p>
                <!--Rubrik för textruta-->
                <asp:Label ID="StartTempLabel" runat="server" Text="Starttemperatur:"></asp:Label><br />

                <!-- Starttemperaturtextruta-->
                <asp:TextBox ID="StartTempBox" runat="server"></asp:TextBox><br />

                <!-- Validering: Kontrollerar om textboxsen är tom-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Starttemperatur är tomt"
                    ControlToValidate="StartTempBox" Display="None"></asp:RequiredFieldValidator>

                <!-- Validering: Kontrollerar om det in matade värdet är int/heltal-->
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Starttemperatur måste vara ett heltal" ControlToValidate="StartTempBox"
                    Type="Integer" Operator="DataTypeCheck" Display="None"></asp:CompareValidator>
            </p>

            <p>
                <!--Rubrik för textruta-->
                <asp:Label ID="EndTempLabel" runat="server" Text="Sluttemperatur:"></asp:Label><br />

                <!--Sluttemperaturtextruta-->
                <asp:TextBox ID="EndTempBox" runat="server"></asp:TextBox><br />

                <!-- Validering: Kontrollerar om textboxsen är tom-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Sluttemperatur är tomt"
                    ControlToValidate="EndTempBox" Display="None"></asp:RequiredFieldValidator>

                <!-- Validering: Kontrollerar om det in matade värdet är int/heltal sen kontrolerar den om den är störe än Starttemperatur-->
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Sluttemperatur måste vara ett heltal högre än starttemperaturen"
                    ControlToValidate="EndTempBox" Type="Integer" Operator="GreaterThan" ControlToCompare="StartTempBox" Display="None"></asp:CompareValidator>

            </p>

            <p>
                <!--Rubrik för textruta-->
                <asp:Label ID="TempIntervalLabel" runat="server" Text="Temperatursteg:"></asp:Label><br />

                <!--Stegtemperaturtextruta-->
                <asp:TextBox ID="TempIntervalBox" runat="server"></asp:TextBox><br />

                <!-- Validering: Kontrollerar om textboxsen är tom-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Temperaturstegs är tomt"
                    ControlToValidate="TempIntervalBox" Display="None"></asp:RequiredFieldValidator>

                <!-- Validering: Kontrollerar om det in matade värdet är ett värde mellan 1-100-->
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TempIntervalBox" Type="Integer"
                    ErrorMessage="Temperatursteget måste ligga mellan 1 och 100" MaximumValue="100" MinimumValue="1" Display="None"></asp:RangeValidator>
            </p>

            <div id="konvert">
                <!--Rubrik för textruta-->
                <asp:Label ID="ConvertTitleLabel" runat="server" Text="val av konvertering"></asp:Label>

                <!--Konverteringsval-->
                <p>
                    <asp:RadioButton ID="CToFButton" runat="server" GroupName="Radiogroup" Text="Celsius till Fahrenheit" Checked="True" />
                </p>
                <p>
                    <asp:RadioButton ID="FToCButton" runat="server" GroupName="Radiogroup" Text="Fahrenheit till Celsius" />
                </p>
            </div>

            <!--knap-->
            <p>
                <asp:Button ID="SendButton" runat="server" Text="Konvertera" OnClick="SendButton_Click" /><br />
            </p>

            <!-- Valideringsfelmeddelanden-->
            <p>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Fel inträffade! Åtgärda felen och försök igen." />
            </p>

            <!-- Temperatur Resultat tabellen-->
            <div id="tabellen">
                <asp:Table ID="ConvTempTable" runat="server" Visible="false">
                    <asp:TableHeaderRow ID="tableheader">
                        <asp:TableHeaderCell ID="HeaderCell1" Text="°C"></asp:TableHeaderCell>
                        <asp:TableHeaderCell ID="HeaderCell2" Text="°F"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
            </div>


        </div>
    </form>
</body>
</html>
