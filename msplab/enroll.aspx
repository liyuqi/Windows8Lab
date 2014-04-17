<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enroll.aspx.cs" Inherits="msplab.enroll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Windows App Funfest</title>
<style type="text/css">
<!--
    body {
        font: 100% 微軟正黑體, Verdana, Arial, Helvetica, sans-serif;
        background-color: #dbdbdb;
        margin: 0;
        padding: 0;
        color: #000;
        font-size:large;
}

/* ~~ 元素/標籤選取器 ~~ */
ul, ol, dl { /* 由於瀏覽器之間的差異，最佳作法是在清單中使用零寬度的欄位間隔及邊界。為了保持一致，您可以在這裡指定所要的量，或在清單包含的清單項目 (LI、DT、DD) 上指定所要的量。請記住，除非您寫入較為特定的選取器，否則在此執行的作業將重疊顯示到 .nav 清單。 */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* 移除上方邊界可以解決邊界可能從其包含的 Div 逸出的問題。剩餘的下方邊界可以保持 Div 不與接在後面的元素接觸。 */
	padding-right: 15px;
	padding-left: 15px; /* 將欄位間隔加入至 Div 內元素的兩側 (而不是 Div 本身)，即可不需執行任何方塊模型的計算作業。具有側邊欄位間隔的巢狀 Div 也可當做替代方法。 */
}
a img { /* 這個選取器會移除某些瀏覽器在影像由連結所圍繞時，影像周圍所顯示的預設藍色邊框 */
	border: none;
}

/* ~~ 網站連結的樣式設定必須保持此順序，包括建立滑過 (Hover) 效果的選取器群組在內。~~ */
a:link {
	color:#414958;
	text-decoration: underline; /* 除非您要設定非常獨特的連結樣式，否則最好提供底線，以便快速看出 */
}
a:visited {
	color: #4E5869;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* 這個選取器群組可以讓使用鍵盤導覽的使用者，也和使用滑鼠的使用者一樣擁有相同的滑過體驗。 */
	text-decoration: none;
}

/* ~~ 這個容器環繞著所有其他的 Div，並依百分比設定其寬度 ~~ */
.container {
	width: 80%;
	max-width: 1260px;/* 建議您使用最大寬度，如此版面在大型螢幕上就不致於過寬，讓行保持比較方便閱讀的長度。IE6 並不適用這項宣告。 */
	min-width: 780px;/* 建議您使用最小寬度，如此版面在大型螢幕上就不致於過窄，讓行在側欄中保持比較方便閱讀的長度。IE6 並不適用這項宣告。 */
	background-color: #FFF;
	margin: 0 auto; /* 兩側的自動值與寬度結合後，版面便會置中對齊。如果將 .container 的寬度設為 100%，就不需要這麼做。 */
}

/* ~~頁首沒有指定的寬度，而會橫跨版面的整個寬度。頁首包含影像預留位置，必須由您自己的連結商標加以取代~~ */
.header {
	background-color: #f5c234;
}

/* ~~ 這是版面資訊。~~ 

1) 欄位間隔只會置於 Div 的頂端或底部。此 Div 內的元素在兩側會有欄位間隔，可讓您不需進行「方塊模型計算」。請記住，如果對 Div 本身加入任何側邊的欄位間隔或邊框，在計算「總」寬度時，就會將這些加入您定義的寬度。您也可以選擇移除 Div 中元素的欄位間隔，然後在其中放置沒有寬度的第二個 Div，並依設計所需放置欄位間隔。

*/
.content {
	padding: 10px 0;
}

/* ~~ 這個群組選取器會在 .content 區域空間中提供清單 ~~ */
.content ul, .content ol { 
	padding: 0 15px 15px 40px; /* 這個欄位間隔反映出上方標題和段落規則中的右方間隔。當欄位間隔位於下方時，便可將清單中的其他元素間隔開來；當位於左方時，則可藉此建立縮排。這些動作均可依需要進行調整。 */
}

/* ~~ 頁尾 ~~ */
.footer {
	//padding: 10px 0;
	background-color: #6F7D94;
    color:#FFF;
}

/* ~~ 其他 float/clear 類別 ~~ */
.fltrt {  /* 這個類別可用來讓元素在頁面中浮動，浮動的元素必須位於頁面上相鄰的元素之前。 */
	float: right;
	margin-left: 8px;
}
.fltlft { /* 這個類別可用來讓元素在頁面左方浮動，浮動的元素必須位於頁面上相鄰的元素之前。 */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* 這個類別可放置在 <br /> 或空白的 Div 上，當做接在 #container 內最後一個浮動 Div 後方的最後一個元素 (如果從 #container 移除或取出 #footer) */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
    .auto-style1 {
        width: 689px;
    }
-->
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
  <div class="header" align="center"><a href="#">
      <img src="lab_title3.png" alt="windows app funfest" name="Insert_logo" id="Insert_logo" style="background-color: #8090AB; display:block;" /></a> 
  </div>
  <div class="content" style="padding:50px;">
      
      <strong style="font-size: 18px; color: rgb(204, 0, 0); font-weight: bold; orphans: 2; widows: 2;">Windows App Funfest 行動應用設計 學生實驗室<br />
      </strong><br />活動日期：<br />　　(梯次1) 102年3月23日(六) 至 3月24日(日)
      <br />　　(梯次2) 102年3月30日(六) 至 3月31日(日)
      <br />活動時間：9:30-17:00
      <br />活動地點：微軟公司(台北市信義區松仁路7號)
      <br />
      <br />此活動預計招收40個名額，此活動名額有限，額滿為止。
       
      <br /><strong style="color:rgb(204, 0, 0)">※</strong>因活動場地限制, 本活動採預約報名制, 恕不接受現場報名。<br />
      <br />
      活動須知：<br />
      1. 此活動須自備筆記型電腦 <br />
      2. 學員技術條件 (具備C++,JAVA或C#.NET等程式設計基礎)<br />
      3. 課程結束後須將作品上架<br />
      <br />
      <hr />
      線上報名<br />
&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="385px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted">
          <Fields>
              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:TemplateField HeaderText="姓名" SortExpression="a_name">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("a_name") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("a_name") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*姓名不可空白" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("a_name") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="a_school" HeaderText="學校" SortExpression="a_school" />
              <asp:BoundField DataField="a_depart" HeaderText="科系" SortExpression="a_depart" />
              <asp:TemplateField HeaderText="Facebook" SortExpression="a_fb">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("a_fb") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("a_fb") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*帳號不可空白" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("a_fb") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="email" SortExpression="a_email">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("a_email") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("a_email") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*email不可空白" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("a_email") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="手機號碼" SortExpression="a_phone">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("a_phone") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("a_phone") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*號碼不可空白" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Bind("a_phone") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="梯次" SortExpression="a_date">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("a_date") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <asp:Label ID="Label6" runat="server" Text="3月23日,24日(已額滿)"></asp:Label>
                      <br />
                      <asp:Label ID="Label7" runat="server" Text="3月30日,31日(已額滿)"></asp:Label>
                      <br />
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("a_date") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
          </Fields>
      </asp:DetailsView>
      
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msptestDBConnectionString %>" SelectCommand="SELECT * FROM [lab]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [lab] WHERE [Id] = @original_Id AND (([a_name] = @original_a_name) OR ([a_name] IS NULL AND @original_a_name IS NULL)) AND (([a_school] = @original_a_school) OR ([a_school] IS NULL AND @original_a_school IS NULL)) AND (([a_depart] = @original_a_depart) OR ([a_depart] IS NULL AND @original_a_depart IS NULL)) AND (([a_fb] = @original_a_fb) OR ([a_fb] IS NULL AND @original_a_fb IS NULL)) AND (([a_email] = @original_a_email) OR ([a_email] IS NULL AND @original_a_email IS NULL)) AND (([a_phone] = @original_a_phone) OR ([a_phone] IS NULL AND @original_a_phone IS NULL)) AND (([a_date] = @original_a_date) OR ([a_date] IS NULL AND @original_a_date IS NULL))" InsertCommand="INSERT INTO [lab] ([a_name], [a_school], [a_depart], [a_fb], [a_email], [a_phone], [a_date]) VALUES (@a_name, @a_school, @a_depart, @a_fb, @a_email, @a_phone, @a_date)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [lab] SET [a_name] = @a_name, [a_school] = @a_school, [a_depart] = @a_depart, [a_fb] = @a_fb, [a_email] = @a_email, [a_phone] = @a_phone, [a_date] = @a_date WHERE [Id] = @original_Id AND (([a_name] = @original_a_name) OR ([a_name] IS NULL AND @original_a_name IS NULL)) AND (([a_school] = @original_a_school) OR ([a_school] IS NULL AND @original_a_school IS NULL)) AND (([a_depart] = @original_a_depart) OR ([a_depart] IS NULL AND @original_a_depart IS NULL)) AND (([a_fb] = @original_a_fb) OR ([a_fb] IS NULL AND @original_a_fb IS NULL)) AND (([a_email] = @original_a_email) OR ([a_email] IS NULL AND @original_a_email IS NULL)) AND (([a_phone] = @original_a_phone) OR ([a_phone] IS NULL AND @original_a_phone IS NULL)) AND (([a_date] = @original_a_date) OR ([a_date] IS NULL AND @original_a_date IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_Id" Type="Int32" />
              <asp:Parameter Name="original_a_name" Type="String" />
              <asp:Parameter Name="original_a_school" Type="String" />
              <asp:Parameter Name="original_a_depart" Type="String" />
              <asp:Parameter Name="original_a_fb" Type="String" />
              <asp:Parameter Name="original_a_email" Type="String" />
              <asp:Parameter Name="original_a_phone" Type="String" />
              <asp:Parameter Name="original_a_date" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="a_name" Type="String" />
              <asp:Parameter Name="a_school" Type="String" />
              <asp:Parameter Name="a_depart" Type="String" />
              <asp:Parameter Name="a_fb" Type="String" />
              <asp:Parameter Name="a_email" Type="String" />
              <asp:Parameter Name="a_phone" Type="String" />
              <asp:Parameter Name="a_date" Type="Int32" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="a_name" Type="String" />
              <asp:Parameter Name="a_school" Type="String" />
              <asp:Parameter Name="a_depart" Type="String" />
              <asp:Parameter Name="a_fb" Type="String" />
              <asp:Parameter Name="a_email" Type="String" />
              <asp:Parameter Name="a_phone" Type="String" />
              <asp:Parameter Name="a_date" Type="Int32" />
              <asp:Parameter Name="original_Id" Type="Int32" />
              <asp:Parameter Name="original_a_name" Type="String" />
              <asp:Parameter Name="original_a_school" Type="String" />
              <asp:Parameter Name="original_a_depart" Type="String" />
              <asp:Parameter Name="original_a_fb" Type="String" />
              <asp:Parameter Name="original_a_email" Type="String" />
              <asp:Parameter Name="original_a_phone" Type="String" />
              <asp:Parameter Name="original_a_date" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
      <hr />
      <br />有任何問題，請來信告知 <a href="mailto:studentlab@hotmail.com.tw">studentlab@hotmail.com.tw</a><br /></div>
        <div class="footer" align="center">
            
        <table width="100%" border="0">
            <tr>
                <td align="left" class="auto-style1">&nbsp;&nbsp;&nbsp; Microsoft Student Lab&nbsp;&nbsp;&nbsp;&nbsp; -主辦單位保留一切權利-</td>
                <td align="right"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manage.aspx">管理</asp:HyperLink></div></td>
            </tr>
        </table>
    </div>

    </form>
</body>
</html>
