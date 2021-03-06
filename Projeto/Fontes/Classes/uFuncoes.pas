unit uFuncoes;

interface

uses
  Vcl.ExtCtrls, Winapi.Windows, Vcl.Buttons, Vcl.Graphics, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Forms,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls,
  REST.Types, System.JSON, REST.Response.Adapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uClasses;

    //Procedures

    procedure focar_botao(form: Tform; BarraPainel: Tpanel; Botao: TspeedButton;
        Focar: boolean; Local: String);
    procedure ocultar_tabs(PageControl : TPageControl);
    function GetComputerNameFunc : string;
    function LimparEdits(form: TForm): Boolean;

    function AbreBD: Boolean;
    function FechaBD: Boolean;
    function LancaEstado(cmb: TComboBox): Boolean;

type
  TDBGridPadrao = class(TCustomGrid);

var
  var_gbl_modulo : String;

implementation

uses udmPrincipal, ufrmHeranca;


procedure ocultar_tabs(PageControl : TPageControl);
var
  page :Integer;

begin
  // funcao percorre o pagecontrol passado por parametro escondendo todas as abas
  for page := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[page].tabvisible := False;

  PageControl.ActivePageIndex := 0;
end;

function LimparEdits(form: TForm): Boolean;
var I: Integer;
begin
  try
    with form do
      Begin
        for I := 0 to ComponentCount -1 do
        begin
          if (Components[i] is TEdit) then
            TEdit(Components[i]).Text         := EmptyStr;
        end;
      End;
  Except
    Result := false;
  end;
end;

procedure focar_botao(form: Tform; BarraPainel: Tpanel; Botao: TspeedButton;
                      Focar: boolean; Local: String);
begin

  if Focar then
  begin
    if local = 'MENU' then
      Botao.Font.Color := clBlack
    else
    if local = 'PRODUTOS' then
      Botao.Font.Color := clBlack;

    BarraPainel.Parent := Botao.Parent;
    BarraPainel.BringToFront;

    BarraPainel.left  := Botao.Left;
    BarraPainel.top   := Botao.Top + ( Botao.Height - 1);
    BarraPainel.Width := Botao.Width;
    BarraPainel.Visible := True;

  end else
  begin
    if local = 'MENU' then
      Botao.Font.Color := clGray
    else
    if local = 'PRODUTOS' Then
      Botao.Font.Color := clGray;

    BarraPainel.Visible := False;
  end;
end;

function GetComputerNameFunc: string;
var ipbuffer  : string;
      nsize   : dword;
begin
   nsize := 255;
   SetLength(ipbuffer,nsize);
   if GetComputerName(pchar(ipbuffer),nsize) then
      result := ipbuffer;
end;


function AbreBD: Boolean;
Var uClasses : TClasses;
Begin
  try
    uClasses := TClasses.Create;
    uClasses.fnc_LerIni;

    uClasses.fnc_configura_bd;

    dmPrincipal.CONEXAO.Connected := true;

    Result := true;
  Except
    Result := false;
    uClasses.Free;
  end;
End;

function FechaBD: Boolean;
Begin
  try
    dmPrincipal.CONEXAO.Connected := false;
    Result := true;
  Except
    Result := false;
  end;
End;


function LancaEstado(cmb: TComboBox): Boolean;
Begin
  try
    dmPrincipal.qry_estados.Open;
    cmb.Items.Clear;
    cmb.Items.BeginUpdate;

    dmPrincipal.qry_estados.First;
    while not dmPrincipal.qry_estados.eof do
      Begin
        cmb.Items.Add(dmPrincipal.qry_estadosSigla.asString);
        dmPrincipal.qry_estados.Next;
      End;
    cmb.Items.EndUpdate;
    cmb.ItemIndex := 0;
    Result := true;
  finally
    Result := false;
  end;
End;
end.
