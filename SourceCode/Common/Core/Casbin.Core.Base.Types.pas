unit Casbin.Core.Base.Types;

interface

uses
  System.Types;

type
  IBaseInterface = interface (IInterface)
    ['{54CC7AC8-E892-49A1-9E8D-FF95A2EE6D64}']
  end;

  TBaseInterfacedObject = class (TInterfacedObject, IBaseInterface)

  end;

  TBaseObject = class (TObject)

  end;

  TFilterArray = TStringDynArray;

implementation

end.
