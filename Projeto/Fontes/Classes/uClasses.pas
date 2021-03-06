unit uClasses;

interface

uses System.IniFiles, System.SysUtils, Vcl.Forms,
     uFuncaoCriptografia, uDWAbout, uRESTDWBase,
      uDWDataModule, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
      FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
      FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
      FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, uRESTDWPoolerDB,
      uRestDWDriverFD, FireDAC.Comp.UI, uRESTDWServerEvents,
      uDWJSONObject, System.JSON, uDWConsts, FireDAC.Stan.Param, FireDAC.DatS,
      FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;


Type

  TClasses = class

  private

    fusuario    : string;
    fsenha      : string;
    fbase       : string;
    fhostname   : string;
    fdllconexao : string;
    fporta      : integer;

    fconexao    : TFDConnection;


  public

    property conexao    : TFDConnection       read fconexao     write fconexao;

    property usuario    : string              read fusuario     write fusuario;
    property senha      : string              read fsenha       write fsenha;
    property base       : string              read fbase        write fbase;
    property hostname   : string              read fhostname    write fhostname;
    property porta      : integer             read fporta       write fporta;
    property dllconexao : string              read fdllconexao  write fdllconexao;

    constructor Create;
    destructor  Destroy; override;


    //fun??es

    function fnc_configura_bd: Boolean;

    function fnc_GravarIni: Boolean;
    function fnc_LerIni: Boolean;


End;

implementation

{ TClasses }

uses udmPrincipal, ufrmPrincipal, uFuncoes;

constructor TClasses.Create;
begin
  fconexao      := dmPrincipal.CONEXAO;
end;

destructor TClasses.Destroy;
begin
  inherited;
end;

function TClasses.fnc_configura_bd: Boolean;
begin
  Result := false;

  with FConexao do
    Begin
      Connected                     := false; //Desconectando se houver

      Params.Values['Database']     := fbase;
      Params.Values['Server']       := fhostname;
      Params.Values['Port']         := inttostr(fporta);
      Params.Values['User_Name']    := fusuario;
      Params.Values['Password']     := fsenha;

      dmPrincipal.FDPhysMySQLDriverLink.VendorLib := fdllconexao;
    End;

  try
    FConexao.Connected                  := true;

    Result := true;
  Except
    Result := false;
  end;
end;

function TClasses.fnc_GravarIni: Boolean;
Var
  IniFile : String;
  Ini     : TiniFile;
Begin
  try
    Result := true;

    IniFile := ChangeFileExt( Application.Exename, '.ini');
    Ini     := TIniFile.Create(IniFile);

    try
      with Ini do
        Begin
          WriteString('CfgDB', 'Database', fbase );
          WriteString('CfgDB', 'Server', fhostname);
          WriteString('CfgDB', 'Port', inttostr(fporta));
          WriteString('CfgDB', 'User_Name', fusuario);
          WriteString('CfgDB', 'Password', uFuncaoCriptografia.Criptografar(fsenha));
          WriteString('CfgDB', 'Caminho_dll', fdllconexao);

        End;

    finally
      Ini.Free;
    end;
  Except
    Result := false;
  end;
End;

function TClasses.fnc_LerIni: Boolean;
Var
  IniFile : String;
  Ini     : TiniFile;
Begin
  try
    IniFile := ChangeFileExt( Application.Exename, '.ini');
    Ini     := TIniFile.Create(IniFile);

    if not FileExists(IniFile) then
      Begin
        Result := false;
        Exit;
      End;

    try
      with Ini do
        Begin
          fbase             := ReadString('CfgDB', 'Database', '' );
          fhostname         := ReadString('CfgDB', 'Server', '');
          fporta            := ReadInteger('CfgDB', 'Port', 0);
          fusuario          := ReadString('CfgDB', 'User_Name', '');
          fsenha            := Descriptografar(ReadString('CfgDB', 'Password', ''));
          fdllconexao       := ReadString('CfgDB', 'Caminho_dll', '');
        End;

    finally
      Result := true;

      frmPrincipal.lbl_computador.Caption  := 'Computador: '+ GetComputerNameFunc;
      frmPrincipal.lbl_data.Caption        := 'Data: '+ FormatDateTime('dd/mm/yyyy hh:mm', Now());
      frmPrincipal.lbl_servidor.Caption    := 'Servidor: '+ fhostname + ','+ inttostr(fporta);

      Ini.Free;
    end;
  Except
    Result := false;
  end;
End;

end.
