        ��  ��                  ;  0   ��
 R O D L F I L E                     <?xml version="1.0" encoding="utf-8"?>
<Library Name="NewLibrary" UID="{3BBA0AE3-7D1A-4CAE-A1E4-7586B43DBA03}" Version="3.0">
<Services>
<Service Name="NewService" UID="{602E6668-40F0-48D6-B454-7B00A3F35146}">
<Interfaces>
<Interface Name="Default" UID="{68628221-673A-4291-BB33-0D7ED0A6F935}">
<Documentation><![CDATA[Service NewService. This service has been automatically generated using the RODL template you can find in the Templates directory.]]></Documentation>
<Operations>
<Operation Name="Sum" UID="{F4E0BBC7-D740-4953-9AFA-ED4313F2F48C}">
<Parameters>
<Parameter Name="Result" DataType="Integer" Flag="Result">
</Parameter>
<Parameter Name="A" DataType="Integer" Flag="In" >
</Parameter>
<Parameter Name="B" DataType="Integer" Flag="In" >
</Parameter>
</Parameters>
</Operation>
<Operation Name="GetServerTime" UID="{54E64EE5-E7FD-44D0-A2BE-8FBAC34ECD75}">
<Parameters>
<Parameter Name="Result" DataType="DateTime" Flag="Result">
</Parameter>
</Parameters>
</Operation>
<Operation Name="NewMethod" UID="{8BC3B41A-0A2A-4139-A0D9-E82A73C6725E}">
<Parameters>
<Parameter Name="Result" DataType="NewStruct" Flag="Result">
</Parameter>
</Parameters>
</Operation>
</Operations>
</Interface>
</Interfaces>
</Service>
</Services>
<Structs>
<Struct Name="NewStruct" UID="{4E312BDD-EE21-43ED-95CA-693AD79A255C}" AutoCreateParams="1">
<Elements>
<Element Name="NewField" DataType="AnsiString">
</Element>
<Element Name="NewField1" DataType="AnsiString">
</Element>
</Elements>
</Struct>
</Structs>
<Enums>
</Enums>
<Arrays>
</Arrays>
</Library>
