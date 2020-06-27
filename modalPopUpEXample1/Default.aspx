<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="modalPopUpEXample1._Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
           .modalBackground 
            {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
                z-index: 10000;
            }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        ASP.NET
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </h2>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <asp:Button ID="btnPopUp" runat="server" Height="47px" Text="MOSTRAR POPUP" 
                Width="258px" onclick="btnPopUp_Click" />            
<br />
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:Button ID="btnInicial" runat="server" Text="Button" style="display:none" />

            <asp:ModalPopupExtender ID="btnPopUp_ModalPopupExtender" runat="server" 
                DynamicServicePath="" Enabled="True" TargetControlID="btnInicial" 
                BackgroundCssClass="modalBackground" PopupControlID="PanelModal">
            </asp:ModalPopupExtender>

            <asp:Panel ID="PanelModal" runat="server" style="display:none; background:white; width:80%; height:auto">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">Modal header</h3>
              </div>
              <div class="modal-body">
                    <div class="container-fluid well">
                        <div class="row-fluid">
                            <div class="span4 ">
                                <div class="control-group">                                            
                                    <label class="control-label" ><strong>Tipo de Cliente :</strong></label>
                                    <div class="controls">
                                        <asp:DropDownList ID="ddlTipoCliente0" CssClass="span11" runat="server" 
                                            TabIndex="1" 
                                            AutoPostBack="True" ValidationGroup="val4" Font-Bold="True">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="control-group">                                            
                                    <label class="control-label" ><strong>Nombres :</strong></label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtNombres0" runat="server" CssClass="span11" 
                                            placeholder="Nombres del Cliente" TabIndex="4" ValidationGroup="val4"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  
              </div>
              <div class="modal-footer">
                  <asp:Button ID="btnClose" runat="server" Text="Close" class="btn" 
                      data-dismiss="modal" aria-hidden="true" onclick="btnClose_Click"/>
                <button class="btn btn-primary">Save changes</button>
              </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                
            </asp:Panel>


    </asp:Content>
