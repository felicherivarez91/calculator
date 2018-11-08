object SystemForm: TSystemForm
  Left = 1029
  Top = 720
  Action = Bufferoperat
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1080#1089#1090#1077#1084#1072' '#1089#1095#1080#1089#1083#1077#1085#1080#1081
  ClientHeight = 284
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clDefault
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MM
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClick = BufferoperatExecute
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Calculations: TGroupBox
    Left = 16
    Top = 97
    Width = 81
    Height = 91
    Cursor = crArrow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Hexadecimal: TRadioButton
      Left = 11
      Top = 8
      Width = 50
      Height = 17
      Caption = 'Hex'
      TabOrder = 0
      OnClick = HexadecimalClick
    end
    object Decimal: TRadioButton
      Left = 11
      Top = 28
      Width = 50
      Height = 17
      Caption = 'Dec'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = DecimalClick
    end
    object Octal: TRadioButton
      Left = 11
      Top = 48
      Width = 50
      Height = 17
      Caption = 'Octal'
      TabOrder = 2
      OnClick = OctalClick
    end
    object Binary: TRadioButton
      Left = 11
      Top = 68
      Width = 50
      Height = 17
      Caption = 'Bin'
      TabOrder = 3
      OnClick = BinaryClick
    end
  end
  object ReadField: TEdit
    Left = 16
    Top = 16
    Width = 484
    Height = 26
    BevelEdges = [beLeft, beTop, beRight]
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Enabled = False
    TabOrder = 1
  end
  object InputField: TEdit
    Left = 16
    Top = 40
    Width = 484
    Height = 26
    Cursor = crHandPoint
    BevelEdges = [beLeft, beRight, beBottom]
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BiDiMode = bdLeftToRight
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clBtnHighlight
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    HideSelection = False
    NumbersOnly = True
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    Text = '0'
    OnChange = InputFieldChange
  end
  object TypesOfCodes: TGroupBox
    Left = 16
    Top = 201
    Width = 81
    Height = 65
    Hint = #1054#1082#1085#1086' '#1076#1083#1103' '#1087#1077#1088#1077#1074#1086#1076#1072' '#1074#1080#1076#1072' '#1079#1085#1072#1095#1077#1085#1080#1081
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object Direct: TRadioButton
      Left = 11
      Top = 8
      Width = 62
      Height = 17
      Hint = #1055#1088#1103#1084#1086#1081' '#1082#1086#1076
      Caption = 'Direct'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      OnClick = DirectClick
    end
    object Reverse: TRadioButton
      Left = 11
      Top = 28
      Width = 62
      Height = 17
      Hint = #1054#1073#1088#1072#1090#1085#1099#1081' '#1082#1086#1076
      Caption = 'Reverse'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ReverseClick
    end
    object Additional: TRadioButton
      Left = 11
      Top = 48
      Width = 62
      Height = 17
      Hint = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1082#1086#1076
      Caption = 'Additional'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = AdditionalClick
    end
  end
  object Equally: TButton
    Left = 464
    Top = 201
    Width = 36
    Height = 65
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = EquallyClick
  end
  object Addition: TButton
    Left = 464
    Top = 166
    Width = 36
    Height = 30
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = AdditionClick
  end
  object Substaction: TButton
    Left = 464
    Top = 131
    Width = 36
    Height = 30
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = SubstactionClick
  end
  object Multiply: TButton
    Left = 464
    Top = 97
    Width = 36
    Height = 30
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = MultiplyClick
  end
  object PosNeg: TButton
    Left = 425
    Top = 236
    Width = 36
    Height = 30
    Caption = #177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = PosNegClick
  end
  object Division: TButton
    Left = 425
    Top = 97
    Width = 36
    Height = 30
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = DivisionClick
  end
  object Three: TButton
    Left = 425
    Top = 201
    Width = 36
    Height = 29
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = ThreeClick
  end
  object Six: TButton
    Left = 425
    Top = 166
    Width = 36
    Height = 30
    Caption = '6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = SixClick
  end
  object Nine: TButton
    Left = 425
    Top = 131
    Width = 36
    Height = 30
    Caption = '9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = NineClick
  end
  object AllClean: TButton
    Left = 387
    Top = 97
    Width = 36
    Height = 30
    Hint = #1054#1095#1080#1097#1072#1077#1090' '#1101#1082#1088#1072#1085' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072
    Caption = 'C'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnClick = AllCleanClick
  end
  object Eight: TButton
    Left = 387
    Top = 131
    Width = 36
    Height = 30
    Caption = '8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = EightClick
  end
  object Five: TButton
    Left = 387
    Top = 166
    Width = 36
    Height = 30
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = FiveClick
  end
  object Two: TButton
    Left = 387
    Top = 201
    Width = 36
    Height = 29
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = TwoClick
  end
  object Zero: TButton
    Left = 387
    Top = 236
    Width = 36
    Height = 30
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = ZeroClick
  end
  object AllCleantwo: TButton
    Left = 348
    Top = 236
    Width = 36
    Height = 30
    Caption = #1057'E'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = AllCleantwoClick
  end
  object One: TButton
    Left = 348
    Top = 201
    Width = 36
    Height = 29
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = OneClick
  end
  object Four: TButton
    Left = 348
    Top = 166
    Width = 36
    Height = 30
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = FourClick
  end
  object ErasureStbySt: TButton
    Left = 348
    Top = 97
    Width = 36
    Height = 30
    Hint = 'BackSpace'
    Caption = #8592
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    OnClick = ErasureStbyStClick
  end
  object Seven: TButton
    Left = 348
    Top = 131
    Width = 36
    Height = 30
    Caption = '7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = SevenClick
  end
  object Ten: TButton
    Left = 270
    Top = 97
    Width = 36
    Height = 30
    Caption = 'A'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnClick = TenClick
  end
  object Eleven: TButton
    Left = 309
    Top = 97
    Width = 36
    Height = 30
    Caption = 'B'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    OnClick = ElevenClick
  end
  object Twelve: TButton
    Left = 309
    Top = 131
    Width = 36
    Height = 30
    Caption = 'C'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = TwelveClick
  end
  object Thirteen: TButton
    Left = 309
    Top = 166
    Width = 36
    Height = 30
    Caption = 'D'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    OnClick = ThirteenClick
  end
  object Fourteen: TButton
    Left = 309
    Top = 201
    Width = 36
    Height = 29
    Caption = 'E'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    OnClick = FourteenClick
  end
  object Fifteen: TButton
    Left = 309
    Top = 236
    Width = 36
    Height = 30
    Caption = 'F'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
    OnClick = FifteenClick
  end
  object ModOper: TButton
    Left = 270
    Top = 131
    Width = 36
    Height = 30
    Caption = 'Mod'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 29
    OnClick = ModOperClick
  end
  object DivBy2: TButton
    Left = 270
    Top = 166
    Width = 36
    Height = 30
    Hint = #1044#1077#1083#1077#1085#1080#1077' '#1087#1072#1088#1085#1099#1093' '#1095#1080#1089#1077#1083' '#1085#1072' 2'
    Caption = 'RoR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 30
    OnClick = DivBy2Click
  end
  object MultiplyBy2: TButton
    Left = 270
    Top = 201
    Width = 36
    Height = 29
    Hint = #1059#1084#1085#1086#1078#1077#1085#1080#1077' '#1095#1080#1089#1077#1083' '#1085#1072' '#1076#1074#1072
    Caption = 'RoL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 31
    OnClick = MultiplyBy2Click
  end
  object XorOperat: TButton
    Left = 270
    Top = 236
    Width = 36
    Height = 30
    Caption = 'Xor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 32
    OnClick = XorOperatClick
  end
  object NotOper: TButton
    Left = 231
    Top = 97
    Width = 36
    Height = 30
    Caption = 'Not'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 33
    OnClick = NotOperClick
  end
  object DoubleFactorial: TButton
    Left = 192
    Top = 201
    Width = 36
    Height = 29
    Hint = #1044#1074#1086#1081#1085#1086#1081' '#1092#1072#1082#1090#1086#1088#1080#1072#1083
    Caption = 'n!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 34
    OnClick = DoubleFactorialClick
  end
  object Square: TButton
    Left = 231
    Top = 201
    Width = 36
    Height = 29
    Caption = 'x^2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 35
    OnClick = SquareClick
  end
  object Cubic: TButton
    Left = 231
    Top = 236
    Width = 36
    Height = 30
    Caption = 'x^3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 36
    OnClick = CubicClick
  end
  object Factorial: TButton
    Left = 231
    Top = 166
    Width = 36
    Height = 30
    Caption = 'n!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 37
    OnClick = FactorialClick
  end
  object PolPower: TButton
    Left = 231
    Top = 131
    Width = 36
    Height = 30
    Caption = 'x^y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 38
    OnClick = PolPowerClick
  end
  object Tenthsquare: TButton
    Left = 192
    Top = 97
    Width = 36
    Height = 30
    Caption = '10^x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 39
    OnClick = TenthsquareClick
  end
  object Fibonacci: TButton
    Left = 192
    Top = 131
    Width = 36
    Height = 30
    Hint = #1056#1103#1076' '#1060#1080#1073#1086#1085#1072#1095#1095#1080
    Caption = 'Fn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 40
    OnClick = FibonacciClick
  end
  object Con0: TButton
    Left = 153
    Top = 131
    Width = 36
    Height = 30
    Hint = #1050#1086#1085#1089#1090#1072#1085#1090#1072' 0'
    Caption = 'con 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 41
    OnClick = Con0Click
  end
  object Stirling: TButton
    Left = 192
    Top = 166
    Width = 36
    Height = 30
    Hint = #1060#1086#1088#1084#1091#1083#1072' '#1057#1090#1080#1088#1083#1080#1085#1075#1072' '#1087#1077#1088#1074#1086#1075#1086' '#1088#1086#1076#1072
    Caption = 'S'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 42
    OnClick = StirlingClick
  end
  object Con1: TButton
    Left = 153
    Top = 166
    Width = 36
    Height = 30
    Hint = #1050#1086#1085#1089#1090#1072#1085#1090#1072' 1'
    Caption = 'con 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 43
    OnClick = Con1Click
  end
  object PirsWebb: TButton
    Left = 153
    Top = 201
    Width = 36
    Height = 29
    Hint = #1060#1091#1085#1082#1094#1080#1103' '#1055#1080#1088#1089#1072'-'#1042#1077#1073#1073#1072
    Caption = #8595
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 44
    OnClick = PirsWebbClick
  end
  object InvRevImp: TButton
    Left = 153
    Top = 236
    Width = 36
    Height = 30
    Hint = #1048#1085#1074#1077#1088#1089#1080#1103' '#1086#1073#1088#1072#1090#1085#1086#1081' '#1080#1084#1087#1083#1080#1082#1072#1094#1080#1080
    Caption = '(x'#8592'y)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 45
    OnClick = InvRevImpClick
  end
  object InvDirImp: TButton
    Left = 114
    Top = 97
    Width = 36
    Height = 30
    Hint = #1048#1085#1074#1077#1088#1089#1080#1103' '#1087#1088#1103#1084#1086#1081' '#1080#1084#1087#1083#1080#1082#1072#1094#1080#1080
    Caption = '(x'#8594'y)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 46
    OnClick = InvDirImpClick
  end
  object Sheffer: TButton
    Left = 114
    Top = 131
    Width = 36
    Height = 30
    Hint = #1060#1091#1085#1082#1094#1080#1103' '#1064#1077#1092#1092#1077#1088#1072
    Caption = #8593
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 47
    OnClick = ShefferClick
  end
  object Equivalence: TButton
    Left = 114
    Top = 166
    Width = 36
    Height = 30
    Hint = #1069#1082#1074#1080#1074#1072#1083#1077#1085#1090#1085#1086#1089#1090#1100
    Caption = '~'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 48
    OnClick = EquivalenceClick
  end
  object DirInv: TButton
    Left = 114
    Top = 201
    Width = 36
    Height = 29
    Hint = #1055#1088#1103#1084#1072#1103' ('#1084#1072#1090#1077#1088#1080#1072#1083#1100#1085#1072#1103') '#1080#1084#1087#1083#1080#1082#1072#1094#1080#1103
    Caption = 'x'#8594'y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 49
    OnClick = DirInvClick
  end
  object RevInv: TButton
    Left = 114
    Top = 236
    Width = 36
    Height = 30
    Hint = #1054#1073#1088#1072#1090#1085#1072#1103' '#1080#1084#1087#1083#1080#1082#1072#1094#1080#1103' '
    Caption = 'x'#8592'y'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 50
    OnClick = RevInvClick
  end
  object Fibonacci2: TGroupBox
    Left = 16
    Top = 296
    Width = 484
    Height = 57
    Caption = #1056#1103#1076' '#1060#1080#1073#1086#1085#1072#1095#1095#1080
    TabOrder = 51
    object E: TEdit
      Left = 13
      Top = 24
      Width = 460
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Primorial: TButton
    Left = 192
    Top = 236
    Width = 36
    Height = 30
    Hint = #1055#1088#1072#1081#1084#1086#1088#1080#1072#1083' '#1080#1083#1080' '#1087#1088#1080#1084#1086#1088#1080#1072#1083
    Caption = 'n#'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 52
    OnClick = PrimorialClick
  end
  object SyperFactorial: TButton
    Left = 153
    Top = 97
    Width = 36
    Height = 30
    Hint = #1057#1091#1087#1077#1088#1092#1072#1082#1090#1086#1088#1080#1072#1083
    Caption = 'sf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 53
    OnClick = SyperFactorialClick
  end
  object MM: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 472
    Top = 488
    object Operations: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object Exit: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ShortCut = 32856
        OnClick = ExitClick
      end
      object ExtendedMM: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100' '#1088#1072#1089#1096#1080#1088#1077#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '
        Enabled = False
        OnClick = ExtendedMMClick
      end
    end
    object Correcting: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object SaveCurvar: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ImageIndex = 23
        ShortCut = 16467
        OnClick = SaveCurvarClick
      end
      object CleanCurVar: TMenuItem
        Caption = #1059#1073#1088#1072#1090#1100
        ShortCut = 16452
        OnClick = CleanCurVarClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CopyValues: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        ShortCut = 16451
        OnClick = CopyValuesClick
      end
      object PasteValues: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        Enabled = False
        ShortCut = 16464
        OnClick = PasteValuesClick
      end
    end
    object help: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object AboutProg: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = AboutProgClick
      end
      object HelpContent: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072
        ShortCut = 112
        OnClick = HelpContentClick
      end
    end
  end
  object Otherfunctions: TActionList
    Left = 424
    Top = 488
    object Bufferoperat: TAction
      Caption = 'Action1'
      OnExecute = BufferoperatExecute
    end
    object CaseOperat: TAction
      Caption = 'CaseOperat'
      OnExecute = CaseOperatExecute
    end
    object ChangeOper: TAction
      Caption = 'ChangeOper'
      OnExecute = ChangeOperExecute
    end
    object DeleteField: TAction
      Caption = 'DeleteField'
      OnExecute = DeleteFieldExecute
    end
    object DoubFac: TAction
      Caption = 'DoubFac'
      OnExecute = DoubFacExecute
    end
    object Fac: TAction
      Caption = 'Fac'
      OnExecute = FacExecute
    end
    object PrimorialFac: TAction
      Caption = 'PrimorialFac'
      OnExecute = PrimorialFacExecute
    end
    object SyperFac: TAction
      Caption = 'SyperFac'
      OnExecute = SyperFacExecute
    end
    object Case2Operat: TAction
      Caption = 'Case2Operat'
      OnExecute = Case2OperatExecute
    end
    object ExceptTranslate: TAction
      Caption = 'ExceptTranslate'
      OnExecute = ExceptTranslateExecute
    end
    object DiapasonOverflow: TAction
      Caption = 'DiapasonOverflow'
      OnExecute = DiapasonOverflowExecute
    end
  end
end
