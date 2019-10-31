% Definicja zewnetrznego rozkladu, kazdy dolaczony rozklad musi konczyc sie
% nazwa Generator, posiadac pola name oraz arguments. Musi posiadac funkcj�
% o nazwie generate zwracaj�c� wygenerowan� macierz liczb pseudolosowych dla danego rozk�adu.
% Funkcja musi przyjmowa� wskaznik this oraz 2 wektory: pierwszy zawieraj�cymi dodatkowe
% parametry, drugi zawieraj�cy rozmiar X oraz Y macierzy do generacji.
% Pola w klasie:
% name - nazwa u�ytego rozk�adu, wy�wietlana w programie
% arguments - nazwy dodatkowych argument�w, wy�wietlane w programie
% Funkcje:
% generate(obj,Params, Size) - funkcja zwraca macierz o rozmiarze Size(1) x Size(2),
% wykorzystuj�c dodatkowe parametry z wektora Params


classdef externalGenerator
    properties
        name = 'Zewn�trzny - studenta'; % Nazwa rozkladu
        arguments = {'St. swobody'} % Nazwy dodatkowych parametrow
       %arguments ={} % gdy brak dodatkowych argumentow
       %arguments = {'arg1' , 'arg2'}; %dwa argumenty

    end
    methods
        function RandM = generate(obj, stopnie, rozmiar)
            RandM = random('T',stopnie, rozmiar(1), rozmiar(2));
        end
    end
end