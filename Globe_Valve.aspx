<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Globe_Valve.aspx.cs" Inherits="Globe_Valve" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <center><h1 style="font-family:'Times New Roman, Times, serif;'">GLOBE VALVES </h1></center>
    <div class="card center">
        <img id="GlobeValveImg" src="img/Valves/globe_valve.jpg" alt="Paris" class="center">
        <div class="container">
            <center><p style="font-family:'Times New Roman, Times, serif;'">GLOBE VALVES </p></center>
        </div>
    </div>
    <br />

    <div class="card center">
        <font size="5" color="#05376d">TEST PRESSURE :</font>

        <div style="overflow-x: auto;">
            <table class="ProductInfo" style="width: 50%;" border="1">

                <tr>
                    <th rowspan="2">MATERIAL</th>
                    <th rowspan="2">CLASS</th>
                    <th colspan="2">SHELL</th>
                    <th colspan="2">SEAT</th>
                    <th colspan="2">AIR SEAT TEST</th>
                </tr>

                <tr>
                    <th>PSIG</th>
                    <th>KSCG</th>
                    <th>PSIG</th>
                    <th>KSCG</th>
                    <th>PSIG</th>
                    <th>KSCG</th>
                </tr>
                <tr>
                    <td rowspan="3">
                        <pre>A216 GR.
WCB/A 217

C5/C12

A351 CF8/

CF8C/A 351

CF8 M</pre>
                    </td>

                    <td style="height: 46px">150</td>
                    <td style="height: 46px">450</td>
                    <td style="height: 46px">31.64</td>
                    <td style="height: 46px">325</td>
                    <td style="height: 46px">22.88</td>
                    <td style="height: 46px">80-100</td>
                    <td style="height: 46px">6-7</td>
                </tr>

                <tr>
                    <td>300</td>
                    <td>1125</td>
                    <td>79.09</td>
                    <td>825</td>
                    <td>57.80</td>
                    <td>80-100</td>
                    <td>6-7</td>
                </tr>

                <tr>
                    <td>600</td>
                    <td>2250</td>
                    <td>158.18</td>
                    <td>1650</td>
                    <td>116.00</td>
                    <td>80-100</td>
                    <td>6-7</td>
                </tr>
            </table>
        </div>
    </div>
    <br />

    <div class="card center">
        <font size="5" color="#05376d">CONSTRUCTION FEATURES:</font>
        <ul class="Mylst">
            <li>Valves Code BS 1873</li>
            <li>End to End Dimension ANSI B 16.10 / 2080</li>
            <li>End Flanged Flat / Raised Face, Drilled to ANSI B 16.5 / BS 1560</li>
            <li>Bonnet Bolted</li>
            <li>Stem Rising</li>
            <li>Disc Loose Plug</li>
            <li>Seat Seal Welded / Renewable - Screwed</li>
            <li>Stem Packing Renewable with Valve open on stream</li>
            <li>Testing Code MSS SP 61 / API 598 / BS 6755</li>
            <li>Handwheel rising</li>
            <li>Others Outside screw and yoke</li>
        </ul>
    </div>
    <br />

    <div class="card center">
        <font size="5" color="#05376d">SIZE :</font>
        <ul class="Mylst">
            <li>ANSI 150 # 50 mm TO 500 mm</li>
            <li>ANSI 300 # 50 mm TO 400 mm</li>
            <li>ANSI 600 # 50 mm TO 300 mm</li>
        </ul>
    </div>
    <br />

</asp:Content>
