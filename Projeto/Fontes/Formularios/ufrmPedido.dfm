object frmPedido: TfrmPedido
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Right = 10
  Margins.Bottom = 10
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Pedido'
  ClientHeight = 634
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object pnl_centro: TPanel
    Left = 0
    Top = 48
    Width = 763
    Height = 586
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object grp_lancamentos: TGroupBox
      AlignWithMargins = True
      Left = 10
      Top = 53
      Width = 743
      Height = 530
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Caption = 'Lan'#231'amentos'
      TabOrder = 0
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 112
        Width = 719
        Height = 80
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = 'Clientes'
        TabOrder = 0
        object cmb_clientes: TComboBox
          AlignWithMargins = True
          Left = 12
          Top = 33
          Width = 695
          Height = 29
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          Style = csDropDownList
          TabOrder = 0
        end
      end
      object grp_produtos: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 198
        Width = 719
        Height = 327
        Margins.Left = 10
        Margins.Right = 10
        Align = alClient
        Caption = 'Produtos'
        TabOrder = 1
        object Panel6: TPanel
          Left = 2
          Top = 23
          Width = 715
          Height = 302
          Align = alClient
          BevelOuter = bvNone
          Caption = '<< Aguardando Lan'#231'amento >>'
          TabOrder = 0
          object pnl_lanc: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 705
            Height = 36
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            BevelOuter = bvNone
            Color = 13553358
            ParentBackground = False
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 121
              Height = 36
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object img_menos: TImage
                AlignWithMargins = True
                Left = 3
                Top = 5
                Width = 25
                Height = 26
                Cursor = crHandPoint
                Margins.Top = 5
                Margins.Bottom = 5
                Align = alLeft
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                  00400806000000AA6971DE00000006624B474400FF00FF00FFA0BDA793000008
                  9E4944415478DAED5B0F8C5C45199F99DDBD3BD2D3AB5C0F0DDEBD3FBBCBD1A6
                  A9893D8B0A6D7245FB272012435A11698368144B3180150DB48120F8EF2C8214
                  152401D262A5A0184C6A5B2414DAA818DA00A196BDEE9FF7F64E437BD73F276D
                  B4B7B7EFF3F7DECE9EDBBDBBBDDDB7BB376DE9976C76BE7933F3E6F77B33DFF7
                  CDBC799CBDCF85ABEE806A394780EA0EA896A9202010EE08CF1522BB80189B45
                  C43B71D70EDC783AAE4D93654EE0779488F5734E31CEF97E272B7627FB927B91
                  9F3DE308E8EAEA0A0D0D1C594A825630628B91D5E2B3A963E8E10E72C4462D9D
                  DCB693B191D39A004DD33E1464E216CED9CD502FA8715F0FA2BB1BB29C365896
                  75ECB422A0BDBDFDBC0611BC03C06F87FAC1718AD818092F6378BFEE5020C61D
                  6E6544E6705B5BDB71F7E2C0C04073C809B53AC23103DCE9C43499879E2D7439
                  1DA7AD21747B3D88E80111FF554E40C4309602DC063759988FF99E129C6D7484
                  783A994CF6FA69DB308C9901A2EBD0CD15AE7AEA558A73216E8EA7523B9410D0
                  CD58B0DF30D6C270AD832A0A2EBDC588AF4FA4534FB3DA193011D5CC2B6153D6
                  81D979852C00C1C34DD3A67D67DFBE7DC35346402412B98046B22FA0F2270BB2
                  0F72E26BE239E05423E063FA8B11B712ADFF849D6A63FECA43C1ABE3F1F840DD
                  09B858D7CD11E2DB51F3A282ECCD59CE56D5D2389512D7D88684F81588585E90
                  DD8B3E2C411FACBA11E081677C379217CAAC610CF7D518EEBF9E0AE0C512368C
                  6F72620F22D920B3FE0912E6574242D90444A3D136CA8CEC727970758CF11330
                  72D7C42D6BBB0AF0A32468DA673817CF23F90199957004BF2C954A1DAC1901B3
                  67CF6EF8CFF113AF16CCF9F7007ED101CB7A4D25F8BC440DE35344F422E034CB
                  ACBF4C9FD1DABD67CF9E4C4D08886AC6CF88B35BA53A0C7FFF79D54FBE5822BA
                  7E39E06C45B23197433D09DBBEA36A02A49FDF3A5A96F8D755CDF9C944DA845F
                  48951CE24B52E9D48BBE09C0BC6FC4BC7F0BC94E597A4BC2B2BEA81A68C93EEB
                  E62662F465C9413CCBF99C5211634902C29A713786FB3D523D080B3B73AA5C9D
                  5FF15C2417EFB0D13881AF4BD8A9FB2A26201C0EB7F0AC63B1DCB29521C85981
                  2067936A80E508A6ED0D98B64F4875080FCE98E8C14D4840443711E2D2BD52DD
                  9BB0AD4FB0FA4578B5161ED18D37F0FFB19C4A6B6110EF2F9B00773D7F6CF070
                  3F93C3084F7F199EFE73AA515522583B2C274ECF48F5DD0EDBEAD839CE7E029F
                  A0F255A8FC82C71D567549DB8A22E9A80655A1088C8224FEF51C0EBA3269DB5B
                  CB220073680B6A2CF30A70762F7CFEDDAAD1F8114C63183FBA4BAABFC534FE52
                  390404C0DC2093C68F02E262BFEB79D57291AECF7218FF87047A246E5B6DAC68
                  248F21C034CD4B8443F910370DD674D540AA113C4C9BC99D25CEA82B6EDB7B4B
                  1210D5F5DB89F1F5F2E21360ED46D520AA22C0309EC2745EE9A611CEDF96B4AC
                  074B1280981A612EFF9A646C35187B443588AA08D08C6F01C8439E42ECD144DA
                  BA693202B0E4E5F3BDF2241625D3C93FAB06518D60A5B884886D93EA2B98D2DD
                  931060A498DC800C9013E94DA793AA41542391F6489405B207DCB474E9E19204
                  4475E3300A9EEFA64F66475AFBFBFB8FF8BAB166AE4404F50DDCA2B11A00F0DF
                  239CF1DF219EEFF153BFF3C2CE19D9D0B0DC2BA44144846D2509C00838C9E416
                  5353F3B446BFBBAD68C78DBDFDBE111A2388E7CD4AF7FB5C912BDAFC6AF024A6
                  40D3941010D58CD760752FA911FEC3C1A64633168BBD5777026A35050CC3981E
                  74F85568EBBC6A9013774648889752A994EDA7BE9F2970D61A41481223E09437
                  586309308C57617916787C9D7D6E70270858589A80F77B2004C66E03630FC80A
                  4FA2C2575483A88A80C25098D8ADC9B4F5504902C21DE1795C387F97EA59B018
                  D2FB00B33D07B68CC5102B5A0EC3FFCE82FB7D4735103F12D5B4D9C4C5DB1268
                  79CB618F35C378E6FF2F1EE93EB88E75AAC1F891886EDE8FFEDF29D5CD18CDD7
                  1597199780B016FE1CE7CE1FA56A49D771A66D8905E496983C654257E041FEA9
                  2C02BA190BF6E986BB29FA61AF10F1E5F174EA59D5882A118CE26B318A374BB5
                  B24D51AF01DD5C0BD6BEEF71C7D81B5845CD6567D2B6B861BC89DECEC981A4BB
                  60FC7E306EC1895A287E31829237242CEB29D5C8CA91A8AE7F95187F5CAAFE5E
                  8CB852F472E450869C99E974FAA86A80A5A4BDBDFDFCC640200668333C809CDD
                  19B7AC1F4E54BE9C97A36F32792802A59FC52858CE4E6389EAE673C4E81A4F21
                  76803704E7C4E3F193BE08F01A34CDC5E4D0B67C592C7157252DEB97AA818E27
                  11CDBC0516FBE7522522076B99F44BA5EA9475400253E1A768EFDB52CD207DF5
                  782E45A58475FD0ACEF81F900C79C038FB3186FEF726AB571601F25DE12B487E
                  3A9743C739E78B7083BFA906EE0AC2DD4B61F476F0D1C3D7B4BBC3B617EE2CE3
                  6C71D987A4DC8D052734BC0B7E70A6770BC64EC0BD2C533D1210B47D1641DBEF
                  D9E821298AB360F0B2442271A89CFA151D9333200162EE31B98FCAAC61F7EC90
                  2A9B20E7BCFB122724C1F73B42CCAF64F7A8E283929204F7805467412B5B328E
                  73D354B948D7D53505428F8D5AFB9CC4E0EF97D6F5A0645EE49941D7E05C5A90
                  7D08AD7D57064B753B2A8B20E74634FEA3BC9FCF09ED0E641ABFD0FBAFDEC18A
                  1BF4DB93EE090F4BD3DB8C444F5D0E4B73BA07E9B905F9DE61E9E9ADAD6BCA39
                  13585302F2626AE622C1E891A2B3C3AE601ED24630F39B03B6BDDF4FDBB9F57C
                  004B58BA9E8DFD76A0177E7ED5647EBEEE04781DF522C6CC1A34879F5C3B140A
                  B13E8C919799C35FE701167338B7868787075B5A5ABC0F268686869A1B1A1A66
                  08C731C941D4295817C298CBF33B394572143EBE0796FE815211DE94129097DC
                  022ABB1ACDE2C73E52CBB621EFC2ED3ECC42A10D00FEEF5A355A978FA6BA611F
                  D2BABE0491D9F5B8C1E2FC8B161F9D3B82BADB61ED37256DDBF53C35FF826C2A
                  3E9B13114DFB3809B100379B85E9E0BA4FCDFD6C0EE09A65278E23EDBAD03E5C
                  8F21BD5F70DA8535BC7BD4ADAE3B51E73E9C54DD01D5728E00D51D502DFF0363
                  0FA16E3A5F91B80000000049454E44AE426082}
                Stretch = True
                OnClick = img_menosClick
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitHeight = 36
              end
              object img_mais: TImage
                AlignWithMargins = True
                Left = 93
                Top = 5
                Width = 25
                Height = 26
                Cursor = crHandPoint
                Margins.Top = 5
                Margins.Bottom = 5
                Align = alRight
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000480000
                  0048080600000055EDB347000006214944415478DAED5C69AC5D53145EAD8A22
                  D10A4124EA698D4189211584678CEAF388E91F919825C620A857FA5A1152C493
                  98DA1F867F45954E86E0119A8A6A4C4DCDBD9EC414A2246853D3F765AFED9C77
                  9C73EE3EEFDC7B8677F7977CB9FB9C7BCF3DE77E77EFB5D75A7B18231EA91853
                  E2BD278293C149E04EE004702B7D6F13F80BF80338047E096E18CD02F13EFB82
                  278347818783BB8163633EF74FCCF57FAB50ABC1B7C097C08F133E5B2B81F601
                  CF07CF02F7767C1ED71FFD29F80CF804F8499D0462AD980E5E071E2B412D89FE
                  F8DFC5349D06F89D9826B451DF1B2FA609EE027689698ADB2408C9DAF53A782F
                  B8428F2B2B1085E9070F8D798F02BCA25C29A6066C74FC5E0AC61A7824788272
                  62CCE7DE0567A9509512680AF800784AE4FC667029F8B818BBE12A888B60B467
                  178033C02D23EFBF005E097E51B640BCFE6A70AE0C6F02BF810F8303E0D72D12
                  2509EC05AF022F05B70D9D6713BE15BC5F7218F33C02ED003E29A6D6D8EFF913
                  5C00CE1663578A04EDD56DE045E0383D4761589BCE037F2A52A0A9E073E0EEA1
                  EF59035EACAF65E21070BEBEDA9AD3004F073F2C42A0E3C574AF13F498BDC6DD
                  62FEBDCD258B63419BC4CEE206097A513A9E74375E6DA740A7824F815BEB317B
                  26FA394BCB5624013D62FC24DBE3FD019E2D197AB92C02B1E62C098933A40FF0
                  51D92A34C181FADC9342229D268E35C95520DA1C3A63B6597D2EA69B6D94FDEB
                  1DD125C6CDD8538FD9DC8E11079BE422107BAB77F426046B4E778DC4B1E0F30F
                  4A5093F8FC8C09537BB76602F1FD65123880B43954BEEACD2A096C6E6C09D626
                  D105A0A399E8273513E81A31310EC1DE8A5DE5B2B27F654ED06E2E96A077BB56
                  8C33995920860FEF4BE09DDE09DE52F6AF6B11F85B6ED232BDFE8324212C4913
                  68B9045E329DBF23A43A7E4E5ED04F5A258133C96E7F4616811895DBA6F41738
                  4DCAF7905B0D8AF336B8851E53A0FFF94771028DD50B6DCAE211F0F2821EDADA
                  8596E67452F09098209760AA645AF4DE710251C9255A66FBDC4B8A093C997D5C
                  AE657AEC6DCB1286C000F73309EC6C4FE81912056242EB382DDF23269E290233
                  C5A44D6813FAC03B0ABAEF3C31D94F82DEF5896902F15F5C2BA6AAD320D3F36C
                  773EC782C1EEED2AD06C6511A0E3C85A44C3CDE6B5BF846A6F5420FE6B376BF9
                  5931D16F51284B206211788696E902CC8C1388E575128C3EF082E73B44A05E31
                  CE23C15CF97EFA1CC304E2C9B57AEE677057695D0E398B40A2AF450AC41CF7B7
                  6242100AC366B62E2A1073CBF7699909B1730A7CC0B04065D42082792E6B5218
                  620D44055A282699445C2126E9DE49025D063EA8E5A7C173A302AD9720C7CCD8
                  2473FEB6E60231E7F59E961B62062BFF13886DEF4731DD3B874B9803DAD46102
                  8D570D387CC5EE7E477083158871C96A2D33D733B5E087AB8240C407E0015A3E
                  0C5C63056297BE48CB4CC0F776A840746B7AB47C26B8D80A7489044679811E77
                  A2401C4FBB50CB34DA8F5A81186FDDA565C62637E6BC114316F688E3325CD3AD
                  A4404C8B0E66B89623BAEC79F206B81CDFBB5ECBD4609E158863D8FD5A66C038
                  2BC74D68E839EAD11539EF32F7C7757E50DCE71A6262C73CA9927ED5425483B9
                  6181E668794E0B0462F03739C7778C04EB5B24509F96FBC202D5BD8931EB494F
                  B86D4DCC1B6983B09166A671BEEFE68723B19BF78EA241A2A3180D35E8661799
                  EAA88240A9A106110E560F16A3662709941AAC12E17C884F77C4A43B7CC2AC49
                  C2AC9353AE9C14F68D3449B9FAA4BD4162D29EF0C33E29C33E841F386C327048
                  F8A1E710AA3679C14E3FE1F49BCA4E5EF0D35F9A0844F809544D0422FC143CF1
                  933889114FE224A2D380E92B54755D862B5A360DD8BE3FDA2692BF21C1928ADC
                  13C909E645B814C1A642EABA14610FF0350996227C252629966B298245DD17B3
                  509C17A54D8B592CFC722807D471411DD7D5DA9ADFD60575167E49A603EAB6A8
                  970699399F4216F55AF865E18ED7A76D2CC0DD1886DA2C4CDAC6024CA10C4849
                  1B0B8431451F647AE43C6D121DCDC7A4D8AD2956A868A56F4D1185DFDCC40176
                  7B1CC638DDE2B63DCEF7624652C2DBE36C0FEE2C6EDBE30C8A19B2AAFCF63851
                  F80D9632DC875B749D041E2D2606A2711DC9165D6F822FCB28D9A22B0DD14DDE
                  B613D3B40836B55FA5833679AB2DFE057341F7581623B1460000000049454E44
                  AE426082}
                Stretch = True
                OnClick = img_maisClick
                ExplicitLeft = 107
              end
              object edt_qtde: TEdit
                AlignWithMargins = True
                Left = 41
                Top = 5
                Width = 39
                Height = 21
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alClient
                Alignment = taCenter
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 13553358
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                Text = '01'
                TextHint = 'Qtde'
                OnExit = edt_qtdeExit
                OnKeyPress = edt_qtdeKeyPress
              end
            end
            object Panel4: TPanel
              AlignWithMargins = True
              Left = 131
              Top = 0
              Width = 571
              Height = 36
              Margins.Left = 10
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel4'
              TabOrder = 1
              object img_busca_produto: TImage
                AlignWithMargins = True
                Left = 546
                Top = 5
                Width = 25
                Height = 26
                Cursor = crHandPoint
                Margins.Top = 5
                Margins.Right = 0
                Margins.Bottom = 5
                Align = alRight
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                  00200806000000737A7AF40000000473424954080808087C0864880000000970
                  485973000000EE000000EE0106D6B2340000001974455874536F667477617265
                  007777772E696E6B73636170652E6F72679BEE3C1A000003524944415478DABD
                  977B684F511CC0CFDD4C4A9E212CFE608ADA90E59DC76C7FF863258F22224D88
                  B6B0E419936889F9431492258C5223AC491E4B4AC61E1EE5510A8DA56626CF44
                  3F9F6FE7FC747677EFFDDD3B6DA73E9DBB73BEE77B3EF7DCDF3DF7CC89C562CA
                  AF388E93443512322D46C33BA8313C843AF27C53ED288E9F0093A7539D827121
                  F27C8642729DFC6F01264EA6DA0C45D03562BE6BB0929C0DED1260F2E154E760
                  7CF4C56CB51A6BC95B164980C9FB5055439A47DC77A8875A780283957E3499E6
                  DA5D7EC34472D78612607287EBEB90E311731AD611F78930914B8537FCFDDA88
                  AFA03A083D5DE39E8A2071BFC2082CE0FA82ABAF09F2E8BF62261A6B56C031FD
                  3BE8DB63FA861AD1E9AE1CC5C46C0B148024633BCAD53787C197FF05B61590BE
                  793059E957B19BC9936AE5F8631E454D9040063C76B5973168499B60FD08E42E
                  FB29FD635D0F85466012CC86ABAE61FBC9B529486039945A6D3F6008833EAA04
                  05A1BD54F125DEC89812DACAB99E6B85DDA23D3B48E01014586DF7183025D1E4
                  4640DE9CE73040E93765202C83C356580BF48DF9EC78227017A65A6D4788CD0F
                  2360240ACC4D4899013FE1BE2B2C8D9CAFFC0464E3B05FA1D5041F8F20209B56
                  B5F973031C35ABE15861F3C959EE27F04CE90F4EBCEC26B82882400AD55BB3FC
                  6B94DE4FDC779B45CE2A3F81B3B0D86AAB203837AC8091184125AFE925A55FCD
                  F3AE905472BEF71390D7A8C46AFB00836241DFE960991293335EBE92AA876F3C
                  CC84DBAEF67C061D69C7E4B209C966D4DB6AAE2257569080D8354277DB1A32E2
                  FB7D04814AA53723BBE492A7C2778CF916C89EBEDDD57747E9EDB825E4E45BA8
                  8A5DCD72520A3CD0C4057A71FD52E90DC52EF2C3591578077AD94F78DCB994A5
                  8C3D9350C0249A467513523CE22E9ABE074A7F37E40C20EFFF04C853AD9FB95D
                  E4EC308B399A120A180949760CBA0448CB0047852F229CED27E1752694672687
                  D1F40893849198E5F581F33C15232187D15D209FD1E49093C859414E4672A0CD
                  F0E87F6456A2958493E0FF0239F32D54FAEC272BE37ED65F94FE5D1C204FA519
                  D35FE9DF4B280927EC8667CE8DC3600C34C30BC636FAC40649D41B89E6480251
                  4B02893AC811890E13082991DDA1022124F675B8400289864E11089028ED3401
                  2321C7F9ADB0086EC0CEBF483D691864C9F9D10000000049454E44AE426082}
                Stretch = True
                OnClick = img_busca_produtoClick
                ExplicitLeft = 107
              end
              object edt_produto: TEdit
                AlignWithMargins = True
                Left = 10
                Top = 5
                Width = 523
                Height = 21
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = 13553358
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                TextHint = 'Produto'
                OnKeyPress = edt_produtoKeyPress
              end
            end
          end
          object grd_painel: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 39
            Width = 705
            Height = 212
            Margins.Left = 5
            Margins.Right = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = ds_temp
            PopupMenu = PopupMenu1
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Visible = False
            OnKeyDown = grd_painelKeyDown
            OnKeyPress = grd_painelKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                ReadOnly = True
                Title.Caption = 'C'#243'digo'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Produto'
                ReadOnly = True
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_produto'
                ReadOnly = True
                Title.Caption = 'Nome Produto'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Qtde'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VUnit'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ind_Cancelamento'
                ReadOnly = True
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'codigo_pedido'
                ReadOnly = True
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'vlr_total'
                ReadOnly = True
                Width = 120
                Visible = True
              end>
          end
          object pnl_status_bar: TPanel
            Left = 0
            Top = 254
            Width = 715
            Height = 48
            Align = alBottom
            BevelOuter = bvNone
            Color = 15987699
            ParentBackground = False
            TabOrder = 2
            object pnl_itens: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 300
              Height = 48
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              BevelOuter = bvNone
              Color = 15987699
              ParentBackground = False
              TabOrder = 0
              object lbl_itens: TLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 280
                Height = 42
                Margins.Left = 10
                Margins.Right = 10
                Align = alClient
                Caption = 'Qtde Itens Pedido: 00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 111
                ExplicitHeight = 13
              end
            end
            object pnl_vtotal: TPanel
              AlignWithMargins = True
              Left = 300
              Top = 0
              Width = 300
              Height = 48
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              BevelOuter = bvNone
              Color = 15987699
              ParentBackground = False
              TabOrder = 1
              object lbl_vtotal: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 287
                Height = 48
                Margins.Top = 0
                Margins.Right = 10
                Margins.Bottom = 0
                Align = alClient
                Caption = 'Valor Total: R$ 0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 97
                ExplicitHeight = 13
              end
            end
          end
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 26
        Width = 719
        Height = 80
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = 'Pedido'
        TabOrder = 2
        object lbl_pedido: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 33
          Width = 695
          Height = 21
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alTop
          Caption = 'Aguardando Lan'#231'amento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 184
        end
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 0
      Width = 743
      Height = 50
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 513
        Top = 0
        Width = 100
        Height = 49
        Margins.Left = 22
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
      end
      object Panel13: TPanel
        AlignWithMargins = True
        Left = 386
        Top = 0
        Width = 100
        Height = 49
        Margins.Left = 22
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 100
          Height = 49
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'SAIR'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
          OnMouseEnter = btn_novoMouseEnter
          OnMouseLeave = btn_novoMouseLeave
          ExplicitLeft = -72
          ExplicitTop = 2
          ExplicitHeight = 44
        end
      end
      object Panel14: TPanel
        AlignWithMargins = True
        Left = 132
        Top = 0
        Width = 100
        Height = 49
        Margins.Left = 22
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object btn_novo: TSpeedButton
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 100
          Height = 49
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'NOVO PEDIDO'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_novoClick
          OnMouseEnter = btn_novoMouseEnter
          OnMouseLeave = btn_novoMouseLeave
          ExplicitLeft = -72
          ExplicitTop = 2
          ExplicitHeight = 44
        end
      end
      object Panel11: TPanel
        AlignWithMargins = True
        Left = 259
        Top = 0
        Width = 100
        Height = 49
        Margins.Left = 22
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object btn_cancelar: TSpeedButton
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 100
          Height = 49
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'CANCELAR'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_cancelarClick
          OnMouseEnter = btn_novoMouseEnter
          OnMouseLeave = btn_novoMouseLeave
          ExplicitLeft = -72
          ExplicitTop = 2
          ExplicitHeight = 44
        end
      end
      object Panel10: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 0
        Width = 100
        Height = 49
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        object btn_salvar: TSpeedButton
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 100
          Height = 49
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'CONFIRMAR'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_salvarClick
          OnMouseEnter = btn_novoMouseEnter
          OnMouseLeave = btn_novoMouseLeave
          ExplicitLeft = -72
          ExplicitTop = 2
          ExplicitHeight = 44
        end
      end
      object pnl_barra_botao: TPanel
        Left = 56
        Top = 47
        Width = 89
        Height = 1
        Color = 18432
        ParentBackground = False
        TabOrder = 5
        Visible = False
      end
      object pnl_barra_botoes: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 49
        Width = 743
        Height = 1
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        BevelOuter = bvNone
        Color = 14408667
        ParentBackground = False
        TabOrder = 6
      end
    end
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnl_fechar: TPanel
      AlignWithMargins = True
      Left = 703
      Top = 5
      Width = 50
      Height = 37
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object btn_fechar: TSpeedButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 50
        Height = 37
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000E6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DE1C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C
          1BE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6
          E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBA
          B6B4BAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1B1C1C1BBAB6B4E6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C
          1C1B1C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4BAB6B41C1C1BBAB6B4E6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6
          E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6
          B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE1C1C1BBAB6B4E6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE}
        OnClick = btn_fecharClick
        ExplicitLeft = 1012
        ExplicitTop = 5
        ExplicitWidth = 48
        ExplicitHeight = 38
      end
    end
    object pnl_Titulo: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 685
      Height = 41
      Margins.Left = 10
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object lbl_titulo_1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 62
        Height = 35
        Align = alLeft
        Caption = 'TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4596480
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 19
      end
      object lbl_titulo_2: TLabel
        AlignWithMargins = True
        Left = 78
        Top = 3
        Width = 61
        Height = 35
        Margins.Left = 10
        Align = alLeft
        Caption = '| Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4596480
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 16
      end
    end
    object pnl_barra_menu: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 47
      Width = 743
      Height = 1
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 14408667
      ParentBackground = False
      TabOrder = 2
    end
  end
  object qry_temp: TFDMemTable
    OnCalcFields = qry_tempCalcFields
    FieldDefs = <>
    IndexDefs = <>
    Aggregates = <
      item
        Name = 'vlr_total_itens'
        Expression = 'sum(qtde*vunit)'
        Active = True
      end>
    AggregatesActive = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 259
    Top = 393
    object qry_tempnome_produto: TStringField
      FieldName = 'nome_produto'
    end
    object qry_tempProduto: TIntegerField
      FieldName = 'Produto'
    end
    object qry_tempQtde: TFloatField
      FieldName = 'Qtde'
    end
    object qry_tempVUnit: TFloatField
      FieldName = 'VUnit'
      currency = True
    end
    object qry_tempInd_Cancelamento: TStringField
      FieldName = 'Ind_Cancelamento'
    end
    object qry_tempcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qry_tempcodigo_pedido: TIntegerField
      FieldName = 'codigo_pedido'
    end
    object vlr_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vlr_total'
      currency = True
      Calculated = True
    end
  end
  object ds_temp: TDataSource
    DataSet = qry_temp
    Left = 339
    Top = 393
  end
  object PopupMenu1: TPopupMenu
    Left = 547
    Top = 392
    object btn_cancel_item: TMenuItem
      Caption = 'CANCELAR'
      OnClick = btn_cancel_itemClick
    end
  end
end
