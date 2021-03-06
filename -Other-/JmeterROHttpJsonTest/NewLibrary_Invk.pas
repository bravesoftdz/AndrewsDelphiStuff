unit NewLibrary_Invk;

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
  {vcl:} Classes,
  {RemObjects:} uROXMLIntf, uROServer, uROServerIntf, uROTypes, uROClientIntf,
  {Generated:} NewLibrary_Intf;

type
  TSeekOrigin = Classes.TSeekOrigin; // fake declaration
  TNewService_Invoker = class(TROInvoker)
  private
  protected
  public
    constructor Create; override;
  published
    procedure Invoke_Sum(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
    procedure Invoke_GetServerTime(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
    procedure Invoke_HelloWorld(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
  end;

implementation

uses
  {RemObjects:} uRORes, uROClient;

{ TNewService_Invoker }

constructor TNewService_Invoker.Create;
begin
  inherited Create;
  FAbstract := False;
end;

procedure TNewService_Invoker.Invoke_Sum(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
{ function Sum(const A: Integer; const B: Integer): Integer; }
var
  A: Integer;
  B: Integer;
  lResult: Integer;
begin
  try
    __Message.Read('A', TypeInfo(Integer), A, []);
    __Message.Read('B', TypeInfo(Integer), B, []);

    lResult := (__Instance as INewService).Sum(A, B);

    __Message.InitializeResponseMessage(__Transport, 'NewLibrary', 'NewService', 'SumResponse');
    __Message.Write('Result', TypeInfo(Integer), lResult, []);
    __Message.Finalize;
    __Message.UnsetAttributes(__Transport);

  finally
  end;
end;

procedure TNewService_Invoker.Invoke_GetServerTime(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
{ function GetServerTime: DateTime; }
var
  lResult: DateTime;
begin
  try
    lResult := (__Instance as INewService).GetServerTime;

    __Message.InitializeResponseMessage(__Transport, 'NewLibrary', 'NewService', 'GetServerTimeResponse');
    __Message.Write('Result', TypeInfo(DateTime), lResult, [paIsDateTime]);
    __Message.Finalize;
    __Message.UnsetAttributes(__Transport);

  finally
  end;
end;

procedure TNewService_Invoker.Invoke_HelloWorld(const __Instance:IInterface; const __Message:IROMessage; const __Transport:IROTransport; out __oResponseOptions:TROResponseOptions);
{ function HelloWorld: UnicodeString; }
var
  lResult: UnicodeString;
begin
  try
    lResult := (__Instance as INewService).HelloWorld;

    __Message.InitializeResponseMessage(__Transport, 'NewLibrary', 'NewService', 'HelloWorldResponse');
    __Message.Write('Result', TypeInfo(UnicodeString), lResult, []);
    __Message.Finalize;
    __Message.UnsetAttributes(__Transport);

  finally
  end;
end;

initialization
end.
