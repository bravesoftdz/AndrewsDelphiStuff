unit TestLibrary_Intf;

{----------------------------------------------------------------------------}
{ This unit was automatically generated by the RemObjects SDK after reading  }
{ the RODL file associated with this project .                               }
{                                                                            }
{ Do not modify this unit manually, or your changes will be lost when this   }
{ unit is regenerated the next time you compile the project.                 }
{----------------------------------------------------------------------------}

{$I RemObjects.inc}

interface

uses
  {vcl:} Classes, TypInfo,
  {RemObjects:} uROXMLIntf, uROClasses, uROClient, uROTypes, uROClientIntf;

const
  { Library ID }
  LibraryUID = '{E2608B76-3DEA-4F31-B79B-F7D35397342B}';
  TargetNamespace = '';

  { Service Interface ID's }
  IBasicService_IID : TGUID = '{162E6777-A9CD-4159-AEF0-CFDE590FA62A}';

type
  TSeekOrigin = Classes.TSeekOrigin; // fake declaration
  { Forward declarations }
  IBasicService = interface;


  { IBasicService }
  IBasicService = interface
    ['{162E6777-A9CD-4159-AEF0-CFDE590FA62A}']
    function Sum(const A: Integer; const B: Integer): Integer;
    function GetServerTime: DateTime;
  end;

  { CoBasicService }
  CoBasicService = class
    class function Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IBasicService;
  end;

  { TBasicService_Proxy }
  TBasicService_Proxy = class(TROProxy, IBasicService)
  protected
    function __GetInterfaceName:string; override;

    function Sum(const A: Integer; const B: Integer): Integer;
    function GetServerTime: DateTime;
  end;

implementation

uses
  {vcl:} SysUtils,
  {RemObjects:} uROEventRepository, uROSerializer, uRORes;

{ CoBasicService }

class function CoBasicService.Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IBasicService;
begin
  Result := TBasicService_Proxy.Create(aMessage, aTransportChannel);
end;

{ TBasicService_Proxy }

function TBasicService_Proxy.__GetInterfaceName:string;
begin
  Result := 'BasicService';
end;

function TBasicService_Proxy.Sum(const A: Integer; const B: Integer): Integer;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'TestLibrary', __InterfaceName, 'Sum');
    lMessage.Write('A', TypeInfo(Integer), A, []);
    lMessage.Write('B', TypeInfo(Integer), B, []);
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', TypeInfo(Integer), Result, []);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

function TBasicService_Proxy.GetServerTime: DateTime;
var
  lMessage: IROMessage;
  lTransportChannel: IROTransportChannel;
begin
  lMessage := __GetMessage;
  lTransportChannel := __TransportChannel;
  try
    lMessage.InitializeRequestMessage(lTransportChannel, 'TestLibrary', __InterfaceName, 'GetServerTime');
    lMessage.Finalize;

    lTransportChannel.Dispatch(lMessage);

    lMessage.Read('Result', TypeInfo(DateTime), Result, [paIsDateTime]);
  finally
    lMessage.UnsetAttributes(lTransportChannel);
    lMessage.FreeStream;
    lMessage := nil;
    lTransportChannel := nil;
  end;
end;

initialization
  RegisterProxyClass(IBasicService_IID, TBasicService_Proxy);


finalization
  UnregisterProxyClass(IBasicService_IID);


end.
