<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gate_Valve.aspx.cs" Inherits="Gate_Valve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="center">GATE VALVES</h2>

    <br />
    <img src="img/Valves/gate_Valve.jpg" alt="Paris" class="center">
    <br />

    <div style="background-color:powderblue;">
    <font size="5" color="blue">TEST PRESSURE :</font>
    <table style="width: 50%;" border="1">

        <tr>
            <td rowspan="2">MATERIAL</td>
            <td rowspan="2">CLASS</td>
            <td colspan="2">SHELL</td>
            <td colspan="2">SEAT</td>
            <td colspan="2">AIR SEAT TEST</td>
        </tr>

        <tr>
            <td>PSIG</td>
            <td>KSCG</td>
            <td>PSIG</td>
            <td>KSCG</td>
            <td>PSIG</td>
            <td>KSCG</td>
        </tr>
        <tr>
           <td rowspan="3"> <pre>A216 GR.
WCB/A 217

C5/C12

A351 CF8/

CF8C/A 351

CF8 M</pre></td>

            <td style="height: 46px">150</td>
            <td style="height: 46px">450</td>
            <td style="height: 46px">31.64</td>
            <td style="height: 46px">325</td>
            <td style="height: 46px">22.88</td>
            <td style="height: 46px">80-100</td>
            <td style="height: 46px">6-7</td>
        </tr>

        <tr>
           <td> 300</td>
            <td>1125</td>
            <td>79.09</td>
            <td>825</td>
            <td>57.80</td>
            <td>80-100</td>
            <td>6-7</td>
        </tr>

        <tr>
           <td> 600</td>
            <td>2250</td>
            <td>158.18</td>
            <td>1650</td>
            <td>116.00</td>
            <td>80-100</td>
            <td>6-7</td>
        </tr>
    </table>

   <br />

    <font size="5" color="blue">CONSTRUCTION FEATURES:</font>
    <%--<h3 style="background-color:blue;">CONSTRUCATION FEATURES:</h3>--%>
    <ul style="background-color:powderblue;">
        <li>&#8594Valves Code API 600 / BS 1414</li>
        <li>&#8594End to End Dimension ANSI B 16.10 / 2080</li>
        <li>&#8594End Flanged Flat / Raised Face, Drilled to ANSI B 16.5 / BS 1560</li>
        <li>&#8594Bonner Bonnet</li>
        <li>&#8594Stem Rising</li>
        <li>&#8594Wedge Solid / Flexible</li>
        <li>&#8594Seat Seal Welded / Renewable - Screwed</li>
        <li>&#8594Stem Packing Renewable with Valve open on stream</li>
        <li>&#8594Testing Code MSS SP 61 / API 598 / BS 6755</li>
        <li>&#8594Handwheel non rising</li>
        <li>&#8594Others Outside screw and yoke</li>
        <li>&#8594Gear Operation ( for DIA>14")</li>
    </ul>
    <br/>
     <font size="5" color="blue">SIZE :</font>

    <ul style="background-color:powderblue;">
        <li>&#8594ANSI 150 # 50 mm TO 500 mm</li>
        <li>&#8594ANSI 300 # 50 mm TO 400 mm</li>
        <li>&#8594ANSI 600 # 50 mm TO 300 mm</li>
    </ul>
    </div>

    <br/>

</asp:Content>

