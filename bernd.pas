unit Bernd;

interface

uses
  Classes, SysUtils, ModificationTools;

function Toggle(name: string): string;

implementation

var
  state: Boolean = false;

function DoChange(fn: TModifyFn; name: string): string;
begin
     result := fn(name);
end;

function Toggle(name: string): string;
begin
     result := Decider(state)(name);
     state := not state;
end;



end.

