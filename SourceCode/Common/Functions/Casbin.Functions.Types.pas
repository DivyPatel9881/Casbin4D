// Copyright 2018 by John Kouraklis and Contributors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
unit Casbin.Functions.Types;

interface

uses
  Casbin.Core.Base.Types, System.Classes, System.Types;

type
  TCasbinFunc = function (const Args: array of string): Boolean;
  TCasbinObjectFunc = function (const Args: array of string): Boolean of object;

  IFunctions = interface (IBaseInterface)
    ['{1AF251A3-A0DE-4FB5-B49E-C46E3D8726AE}']
    procedure registerFunction (const aName: string;
                                  const aFunc: TCasbinFunc); overload;
    procedure registerFunction (const aName: string;
                                  const aFunc: TCasbinObjectFunc); overload;
    function retrieveFunction(const aName: string): TCasbinFunc;
    function retrieveObjFunction(const aName: string): TCasbinObjectFunc;
    function list: TStringList;
    procedure refreshFunctions;
  end;

implementation

end.
