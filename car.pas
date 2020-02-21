unit car;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  Automobile = class
    private
    public
        constructor Create();
        function Honk(): string;
  end;

implementation

constructor Automobile.Create();
begin
end;

function Automobile.Honk(): string;
begin
          result := 'Toooot';
end;

end.



