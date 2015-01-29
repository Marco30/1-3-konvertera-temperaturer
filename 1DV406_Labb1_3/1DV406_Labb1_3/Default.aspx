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
                    ControlToValidate="StartTempBox" Display="Dynamic"></asp:RequiredFieldValidator>

                <!-- Validering: Kontrollerar om det in matade värdet är int/heltal-->
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Starttemperatur måste vara ett heltal" ControlToValidate="StartTempBox"
                    Type="Integer" Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
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


        </div>
    </form>
</body>
</html>
