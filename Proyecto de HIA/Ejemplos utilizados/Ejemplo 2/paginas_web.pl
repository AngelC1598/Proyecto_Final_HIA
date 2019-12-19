%categorias
ropas(ropa,general,"forever21.com").
ropas(ropa,categorias,sueter,"qwertee.com").
ropas(ropa,categorias,pantalones,"buy-jeans.net").
ropas(ropa,categorias,zapatillas,"Stockx.com").
electronica(computadoras_mesa,usado,"Amazon	Warehouse	| Personal	computers").
electronica(computadoras_mesa,nuevo,"newegg.com/catergoty/ID233").
electronica(laptop,nuevo,"newegg.com/LaptopsNotebooks/SubCategory/ID32").
electronica(laptop,usado,"Amazon	Warehouse	| Personal	computers").
electronica(componentes,usado,"Amazon	Warehouse	| Personal	computers").
electronica(componentes,nuevo,"newegg.com/marketplace").
al_por_mayor(por_mayor,intermediario,"yoybuy.com	Limitada	a	los productos	con	los que	puedan trabajar").
al_por_mayor(por_mayor,directo,personal,juguetes,"koleimports.com/toys").
al_por_mayor(por_mayor,directo,personal,joyas,"Dhgate.com Joyas").
al_por_mayor(por_mayor,directo,personal,ropa,"alibaba.com/apparel_p3").
al_por_mayor(por_mayor,directo,reventa,accesorios_moda,"fashiongo.net").
al_por_mayor(por_mayor,directo,reventa,electronica,"AliExpress	| Electronic Components &	Supplie").
al_por_mayor(por_mayor,directo,reventa,carros,"chinabrands.com/category/dropshipautomobiles-motorcycles").

%compras

comprar(A,B) :-
    ropas(A,B,C),
    format('La pagina recomendada es ~w',[C]).
    comprar(A,B) :-
    electronica(A,B,C),
    format('La pagina recomendada es ~w',[C]).
    comprar(A,B) :-
    al_por_mayor(A,B,C),
    format('La pagina recomendada es ~w',[C]).
    
comprar(A,B,C) :-
    ropas(A,B,C,D),
    format('La pagina recomendada es ~w',[D]).

comprar(A,B,C,D) :-
    al_por_mayor(A,B,C,D,E),
    format('La pagina recomendada es ~w',[E]).