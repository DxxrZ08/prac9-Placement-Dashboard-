<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Companies.aspx.cs" Inherits="P9_PlacementDashboard.Companies" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Company Placement Details</title>
    <style>
        body { font-family: Arial; background: #f4f6f9; margin: 30px; }
        .company-card { background: white; padding: 15px; margin: 10px; border-radius: 8px; display: inline-block; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Placement Records</h2>
        <asp:Repeater ID="rptCompanies" runat="server">
            <HeaderTemplate>
                <table border="1" cellpadding="8">
                    <tr>
                        <th>Placement ID</th>
                        <th>Student ID</th>
                        <th>Company</th>
                        <th>Job Role</th>
                        <th>Package (LPA)</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("PlacementId") %></td>
                    <td><%# Eval("StudentId") %></td>
                    <td><%# Eval("CompanyName") %></td>
                    <td><%# Eval("JobRole") %></td>
                    <td><%# Eval("PackageLPA") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <br /><br />
        <h3>Company Details Using DataList</h3>
        <asp:DataList ID="dlPlacements" runat="server">
            <ItemTemplate>
                <div class="company-card">
                    <b>Company:</b> <%# Eval("CompanyName") %><br />
                    <b>Job Role:</b> <%# Eval("JobRole") %><br />
                    <b>Package:</b> <%# Eval("PackageLPA") %> LPA
                </div>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <a href="Default.aspx">Back to Dashboard</a>
    </form>
</body>
</html>
