%hechos
%primera pregunta._Entretenimiento_con_ninhos_presentes_si_o_no

entretenimiento(si).
entretenimiento(no).

%para_si
para_ninhos(si,peliculasn).
para_ninhos(si,seriesn).

%peliculas_ninhos
para_peli_ninhos(peliculasn,dibujos_animadosp).
para_peli_ninhos(peliculasn,comediap).

%series_ninhos
para_series_ninhos(seriesn,dibujos_animadoss).
para_series_ninhos(seriesn,comedias).

%para_no
para_adultos(no,seriesa).
para_adultos(no,peliculasa).

%peliculas_adultos
para_peli_adultos(peliculasa,accion).
para_peli_adultos(peliculasa,suspenso).
para_peli_adultos(peliculasa,terror).
para_peli_adultos(peliculasa,romance).
para_peli_adultos(peliculasa,comediaap).
para_peli_adultos(peliculasa,drama).

%series_adultos
para_series_adultos(seriesa,terrorr).
para_series_adultos(seriesa,miniseries).
para_series_adultos(seriesa,accions).
para_series_adultos(seriesa,comediaas).
para_series_adultos(seriesa,dramas).


%Respuestas
%Pelis_ninhos
respuesta(dibujos_animadosp,toy_Story).
respuesta(comediap,zootopia).
%series_ninhos
respuesta(dibujos_animadoss,trollhunter).
respuesta(comedias,bob_esponja).
%peliculas_adultos
respuesta(accion,john_Wick).
respuesta(suspenso,halloween).
respuesta(terror,annabelle).
respuesta(romance,crepusculo).
respuesta(comediaap,american_pie).
respuesta(drama,robin_Hood).
%series_adultos
respuesta(terrorr,dexter).
respuesta(miniseries,chernobyl).
respuesta(accions,the_flash).
respuesta(comediaas,the_ranch).
respuesta(dramas,breaking_bad).

%preguntas :v
%series_peliculas_recomendadas(si,peliculasn,dibujos_animadosp,RES).
%series_peliculas_recomendadas(si,peliculasn,comediap,RES).
%series_peliculas_recomendadas(si,seriesn,dibujos_animadoss,RES).
%series_peliculas_recomendadas(si,seriesn,comedias,RES).
%series_peliculas_recomendadas(no,peliculasa,accion,RES).
%series_peliculas_recomendadas(no,peliculasa,suspenso,RES).
%series_peliculas_recomendadas(no,peliculasa,terror,RES).
%series_peliculas_recomendadas(no,peliculasa,romance,RES).
%series_peliculas_recomendadas(no,peliculasa,comediaap,RES).
%series_peliculas_recomendadas(no,peliculasa,drama,RES).
%series_peliculas_recomendadas(no,seriesa,terrorr,RES).
%series_peliculas_recomendadas(no,seriesa,miniseries,RES).
%series_peliculas_recomendadas(no,seriesa,comediaas,RES).
%series_peliculas_recomendadas(no,seriesa,dramas,RES).


%reglas
series_peliculas_recomendadas(SI,PPN,DC,RES):-entretenimiento(SI), para_ninhos(SI,PPN),para_peli_ninhos(PPN,DC), write('La pelicula recomendada es: '), respuesta(DC,RES).
series_peliculas_recomendadas(SI,PSN,C,RES):-entretenimiento(SI), para_ninhos(SI,PSN),para_series_ninhos(PSN,C), write('La serie recomendada es: '), respuesta(C,RES).
series_peliculas_recomendadas(NO,PPA,Y,RES):-entretenimiento(NO), para_adultos(NO,PPA), para_peli_adultos(PPA,Y), write('La pelicula recomendada es: '), respuesta(Y,RES).
series_peliculas_recomendadas(NO,PSA,S,RES):-entretenimiento(NO), para_adultos(NO,PSA), para_series_adultos(PSA,S), write('La serie recomendada es: '), respuesta(S,RES).
