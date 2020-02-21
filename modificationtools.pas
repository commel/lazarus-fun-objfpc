unit ModificationTools;

{$mode objfpc}

interface

uses
  Classes, SysUtils;

type
  TModifyFn = function(n: string): string;

function StringUp(name: string): string;
function StringDown(name: string): string;

function Decider(state: Boolean): TModifyFn;

implementation

function StringUp(name: string): string;
begin
  result := UpperCase(name);
end;

function StringDown(name: string): string;
begin
  result := LowerCase(name);
end;

function Decider(state: Boolean): TModifyFn;
begin
  if (state = true) then
  begin
       result := @StringUp;
  end
  else
  begin
    result := @StringDown;
  end;
end;

end.

