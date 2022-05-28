program WKTechnology;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  ufrmHeranca in 'Fontes\Formularios\ufrmHeranca.pas' {frmHeranca},
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  uFuncoes in 'Fontes\Classes\uFuncoes.pas',
  ufrmClientes in 'Fontes\Formularios\ufrmClientes.pas' {frmClientes},
  uClientes in 'Fontes\Classes\uClientes.pas',
  ufrmProdutos in 'Fontes\Formularios\ufrmProdutos.pas' {frmProdutos},
  uProdutos in 'Fontes\Classes\uProdutos.pas',
  ufrmPedido in 'Fontes\Formularios\ufrmPedido.pas' {frmPedido},
  uPedido in 'Fontes\Classes\uPedido.pas',
  ufrmMovimentacao in 'Fontes\Formularios\ufrmMovimentacao.pas' {frmMovimentacao},
  ufrmMovimentacaoItem in 'Fontes\Formularios\ufrmMovimentacaoItem.pas' {frmItens},
  ufrmInventarios in 'Fontes\Formularios\ufrmInventarios.pas' {frmInventarios};

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := True; //Verificar MemoryLeaks
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmHeranca, frmHeranca);
  Application.CreateForm(TfrmInventarios, frmInventarios);
  Application.Run;
end.
