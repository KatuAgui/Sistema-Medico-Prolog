
/*
INTERFAZ GRAFICA: Esta parte del sistema experto es la que se encarga de
interactuar con la persona comun, mostrar imagenes, botones, textos, etc.
*/
 :- use_module(library(pce)).
 :- pce_image_directory('./imagenes').
 :- use_module(library(pce_style_item)).
 :- dynamic color/2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 resource(img_principal, image, image('img_principal.jpg')).
 resource(portada, image, image('portada.jpg')).
 resource(neumonia, image, image('tra_neumonia.jpg')).
 resource(asma, image, image('tra_asma.jpg')).
 resource(crup, image, image('tra_crup.jpg')).
 resource(alergia, image, image('tra_alergia.jpg')).
 resource(conjutivitis, image, image('tra_conjuntivitis.jpg')).
 resource(gripe, image, image('tra_gripe.jpg')).
 resource(meningitis, image, image('tra_meningitis.jpg')).
 resource(estres, image, image('tra_estres.jpg')).
 resource(bronquitis, image, image('tra_bronquitis.jpg')).
 resource(anemia, image, image('tra_anemia.jpg')).
 resource(cervicalgia, image, image('tra_cervicalgia.jpg')).
 resource(colera, image, image('tra_colera.jpg')).
 resource(colon, image, image('tra_colon.jpg')).
 resource(disenteria, image, image('tra_disenteria.jpg')).
 resource(hipertension, image, image('tra_hipertension.jpg')).
 resource(covid19, image, image('tra_covid19.jpg')).
 resource(rinitis, image, image('tra_rinitis.jpg')).
 resource(enfisema, image, image('tra_infisema.jpg')).
 resource(pulmonia, image, image('tra_pulmonia.jpg')).
 resource(influenza, image, image('tra_influenza.jpg')).
 resource(lo_siento_diagnostico_desconocido, image, image('desconocido.jpg')).
 resource(tos_cronica, image, image('tos_cronica.jpg')).
 resource(fiebre, image, image('fiebre.jpg')).
  resource(fiebre_elevada, image, image('fiebre.jpg')).
 resource(escalofrios, image, image('escalofrios.jpg')).
 resource(dolor_muscular, image, image('dolor_muscular.jpg')).
 resource(dolor_cabeza, image, image('dolor_cabeza.jpg')).
 resource(tos_severa, image, image('tos_severa.jpg')).
 resource(sibilancias, image, image('sibilancias.jpg')).
 resource(dificultad_respirar, image, image('dificultad_respirar.jpg')).
 resource(opresion_pecho, image, image('opresion_pecho.jpg')).
 resource(tos_persistente, image, image('tos_persistente.jpg')).
 resource(tos_esputo, image, image('tos_esputo.jpg')).
 resource(fatiga, image, image('fatiga.jpg')).
 resource(dolor_pecho, image, image('dolor_pecho.jpg')).
 resource(debilidad, image, image('debilidad.jpg')).
 resource(estornudos, image, image('estornudos.jpg')).
 resource(secrecion_nasal, image, image('secrecion_nasal.jpg')).
 resource(congestion_nasal, image, image('congestion_nasal.jpg')).
 resource(picazon_nasal, image, image('picazon_nasal.jpg')).
 resource(lagrimeo, image, image('lagrimeo.jpg')).
 resource(tos_sangre, image, image('tos_sangre.jpg')).
 resource(respiracion_rapida, image, image('respiracion_rapida.jpg')).
 resource(confusion_mental, image, image('confusion_mental.jpg')).
 resource(tos_seca, image, image('tos_seca.jpg')).
 resource(dolor_garganta, image, image('dolor_garganta.jpg')).
 resource(malestar_cuerpo, image, image('malestar_cuerpo.jpg')).
 resource(nauseas, image, image('nauseas.jpg')).
 resource(vomito, image, image('vomito.jpg')).
 resource(molestia_luz, image, image('molestia_luz.jpg')).
 resource(depresion, image, image('depresion.jpg')).
 resource(sudor_excesivo, image, image('sudor_excesivo.jpg')).
 resource(tension, image, image('tension.jpg')).
 resource(falta_concentracion, image, image('falta_concentracion.jpg')).
 resource(ataques_panico, image, image('ataques_panico.jpg')).
 resource(urticaria, image, image('urticaria.jpg')).
 resource(eccemas, image, image('eccemas.jpg')).
 resource(cansancio, image, image('cansancio.jpg')).
 resource(palidez_piel, image, image('palidez_piel.jpg')).
 resource(desmayos, image, image('desmayos.jpg')).
 resource(palpitaciones, image, image('palpitaciones.jpg')).
 resource(cefalea, image, image('cefalea.jpg')).
 resource(dolor_cuello, image, image('dolor_cuello.jpg')).
 resource(rigidez, image, image('rigidez.jpg')).
 resource(palpitaciones_cuello, image, image('palpitaciones_cuello.jpg')).
 resource(dolor_brazos, image, image('dolor_brazos.jpg')).
 resource(torticolis, image, image('torticolis.jpg')).
 resource(diarrea, image, image('diarrea.jpg')).
 resource(decaimiento, image, image('decaimiento.jpg')).
 resource(piel_apergaminada, image, image('piel_apergaminada.jpg')).
 resource(dolores_musculares, image, image('dolores_musculares.jpg')).
 resource(sudor_rostro, image, image('sudor_excesivo.jpg')).
 resource(dolor_abdominal, image, image('dolor_abdominal.jpg')).
 resource(estrenimiento, image, image('estrenimiento.jpg')).
 resource(distension_abdominal, image, image('distension_abdominal.jpg')).
 resource(alteracion_emocional, image, image('alteracion_emocional.jpg')).
 resource(parpados_pegados, image, image('parpados_pegados.jpg')).
 resource(secrecion_matinales, image, image('secrecion_matinales.jpg')).
 resource(molestia_vista, image, image('molestia_vista.jpg')).
 resource(ojos_enrojesidos, image, image('ojos_enrojesidos.jpg')).
 resource(ojos_llorosos, image, image('ojos_llorosos.jpg')).
 resource(ojos_hinchados, image, image('ojos_hinchados.jpg')).
 resource(tos_perruna, image, image('tos_perruna.jpg')).
 resource(jadeo, image, image('jadeo.jpg')).
 resource(piel_azulada, image, image('piel_azulada.jpg')).
 resource(flatulencia, image, image('flatulencia.jpg')).
 resource(aletargamiento, image, image('aletargamiento.jpg')).
 resource(perdida_memoria, image, image('perdida_memoria.jpg')).
 resource(sensacion_desequilibrio, image, image('sensacion_desequilibrio.jpg')).
 resource(hormigueo_extremidades, image, image('hormigueo_extremidades.jpg')).
 resource(transtornos_oculares, image, image('transtornos_oculares.jpg')).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 mostrar_imagen(Pantalla, Imagen) :- new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(100,80)).
  mostrar_imagen_tratamiento(Pantalla, Imagen) :-new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(20,100)).
 nueva_imagen(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(0,0)).
  imagen_pregunta(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(500,60)).

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  botones:-borrado,
                send(@boton, free),
                send(@btntratamiento,free),
                send(@btnrespiratorio,free),
                mostrar_diagnostico(Enfermedad),
                send(@resp1, selection(Enfermedad)),
                new(@boton, button('Iniciar consulta',
                message(@prolog, botones)
                )),
                new(@btntratamiento,button('Detalles y Tratamiento',
                message(@prolog, mostrar_tratamiento,Enfermedad)
                )),
                new(@btnrespiratorio, button('Enfermedades Respiratorio',
                message(@prolog, botones)
                )),
                send(@main, display,@boton,point(20,450)),
                send(@main, display,@btntratamiento,point(138,450)).



  mostrar_tratamiento(X):-new(@tratam, dialog('Tratamiento')),
                          send(@tratam, append, label(nombre, 'Explicacion: ')),
                          send(@tratam, display,@lblExp1,point(70,51)),
                          send(@tratam, display,@lblExp2,point(50,80)),
                          tratamiento(X),
                          send(@tratam, transient_for, @main),
                          send(@tratam, open_centered).

tratamiento(X):- send(@lblExp1,selection('De Acuerdo Al Diagnostico El Tratamiento Es:')),
                 mostrar_imagen_tratamiento(@tratam,X).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


   preguntar(Preg,Resp):-new(Di,dialog('Colsultar Datos:')),
                        new(L2,label(texto,'Responde las siguientes preguntas')),
                        id_imagen_preg(Preg,Imagen),
                        imagen_pregunta(Di,Imagen),
                        new(La,label(prob,Preg)),
                        new(B1,button(si,and(message(Di,return,si)))),
                        new(B2,button(no,and(message(Di,return,no)))),
                        send(Di, gap, size(25,25)),
                        send(Di,append(L2)),
                        send(Di,append(La)),
                        send(Di,append(B1)),
                        send(Di,append(B2)),
                        send(Di,default_button,'si'),
                        send(Di,open_centered),get(Di,confirm,Answer),
                        free(Di),
                        Resp=Answer.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  interfaz_principal:-new(@main,dialog('Sistema Experto Diagnosticador de Enfermedades',
        size(1000,1000))),
        new(@resp1, label(nombre,'',font('times','roman',22))),
        new(@lblExp1, label(nombre,'',font('times','roman',14))),
        new(@lblExp2, label(nombre,'',font('times','roman',14))),
        new(@salir,button('SALIR',and(message(@main,destroy),message(@main,free)))),
        new(@boton, button('Iniciar consulta',message(@prolog, botones))),
        new(@btnrespiratorio, button('Enfermedades Respiratorias',message(@prolog, botones))),

        new(@btntratamiento,button('¿Tratamiento?')),

        nueva_imagen(@main, img_principal),
        send(@main, display,@boton,point(138,450)),
        send(@main, display,@btnrespiratorio,point(300,450)),
        send(@main, display,@salir,point(500,450)),
        send(@main, display,@resp1,point(20,210)),
        send(@main,open_centered).

       borrado:- send(@resp1, selection('')).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  crea_interfaz_inicio:- new(@interfaz,dialog('Bienvenido al Sistema Experto Diagnosticador',
  size(800,600))),

  mostrar_imagen(@interfaz, portada),

  new(BotonComenzar,button('COMENZAR',and(message(@prolog,interfaz_principal) ,
  and(message(@interfaz,destroy),message(@interfaz,free)) ))),
  new(BotonSalir,button('SALIDA',and(message(@interfaz,destroy),message(@interfaz,free)))),
  send(@interfaz,append(BotonComenzar)),
  send(@interfaz,append(BotonSalir)),
 /*
  send(@interfaz, display,BotonComenzar,point(300,540)),
  send(@interfaz, display,BotonSalir,point(500,540)),
*/

  send(@interfaz,open_centered).
  
  

  :-crea_interfaz_inicio.
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/* BASE DE CONOCIMIENTOS: Síntomas y Enfermedades */


% PROBLEMA CUANDO SE REPITE UNA ENFERMEDAD AL INICIO MAS DE 2 VECES
% 1 al 10
conocimiento('neumonia',
    ['fiebre elevada(alrededor de 40 grados)', 'tos con esputo', 'dificultad para respirar', 'dolor en el pecho', 'debilidad']).

conocimiento('covid19',
    ['fiebre elevada(alrededor de 40 grados)', 'tos seca', 'dificultad para respirar', 'fatiga', 'dolor de garganta']).

conocimiento('pulmonia',
    ['fiebre(38 o mas)', 'tos con sangre', 'respiración rápida', 'confusión mental', 'dolor en el pecho']).

conocimiento('influenza',
    ['fiebre(38 o mas)', 'tos severa', 'escalofríos', 'dolor muscular', 'dolor de cabeza']).

conocimiento('gripe',
    ['fiebre(38 o mas)', 'dolor de cabeza', 'escalofríos', 'dolor de garganta', 'malestar en todo el cuerpo']).

conocimiento('meningitis',
    [ 'dolor de cabeza', 'nauseas', 'vomito', 'molestia ante la luz', 'confusión mental']).

conocimiento('estres',
    ['dolor de cabeza', 'depresion', 'sudor excesivo', 'tension', 'falta de concentracion', 'ataques de panico']).

conocimiento('crup',
    ['tos perruna', 'dificultad para respirar', 'jadeo', 'piel de la cara azulada']).
    
conocimiento('enfisema',
    ['dificultad para respirar', 'sibilancias', 'opresión en el pecho', 'fatiga', 'tos crónica']).

conocimiento('asma',
    ['dificultad para respirar','sibilancias', 'opresión en el pecho', 'tos persistente']).

% 11 al 20
conocimiento('bronquitis',
    ['tos con esputo', 'dificultad para respirar', 'fatiga', 'opresión en el pecho']).

conocimiento('rinitis',
    ['estornudos', 'secreción nasal', 'congestión nasal', 'picazón en la nariz', 'lagrimeo']).

conocimiento('alergia',
    ['estornudos', 'urticaria', 'eccemas', 'dificultad para respirar']).

conocimiento('anemia',
    ['cansancio', 'palidez de la piel', 'desmayos', 'palpitaciones', 'cefalea']).

conocimiento('cervicalgia',
    ['dolor en el cuello', 'rigidez', 'palpitacion dolorosa en el cuello', 'dolor en uno o ambos brazos', 'torticolis']).

conocimiento('colera',
    ['diarrea', 'vomito', 'decaimiento', 'piel apergaminada', 'dolores musculares', 'sudor frio en el rostro']).

conocimiento('colon irritado',
    ['dolor abdominal', 'distension abdominal', 'nauseas', 'vomito', 'alteracion emocional', 'depresion', 'estreñimiento']).

conocimiento('disenteria',
    ['dolor abdominal', 'nauseas', 'vomito', 'flatulencia', 'aletargamiento', 'debilidad']).

conocimiento('conjutivitis',
    ['parpados pegados', 'secrecion matinales', 'molestia en la vista', 'ojos enrojesidos', 'ojos llorosos', 'ojos hinchados']).

conocimiento('hipertension',
    ['perdida de memoria', 'sensacion de desequilibrio', 'hormigueo en las extremidades', 'transtornos oculares']).




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Identificadores de imágenes
id_imagen_preg('fiebre elevada(alrededor de 40 grados)', 'fiebre_elevada').
id_imagen_preg('fiebre(38 o mas)', 'fiebre').
id_imagen_preg('escalofríos', 'escalofrios').
id_imagen_preg('dolor muscular', 'dolor_muscular').
id_imagen_preg('dolor de cabeza', 'dolor_cabeza').
id_imagen_preg('tos severa', 'tos_severa').
id_imagen_preg('sibilancias', 'sibilancias').
id_imagen_preg('dificultad para respirar', 'dificultad_respirar').
id_imagen_preg('opresión en el pecho', 'opresion_pecho').
id_imagen_preg('tos persistente', 'tos_persistente').
id_imagen_preg('tos con esputo', 'tos_esputo').
id_imagen_preg('fatiga', 'fatiga').
id_imagen_preg('dolor en el pecho', 'dolor_pecho').
id_imagen_preg('debilidad', 'debilidad').
id_imagen_preg('tos crónica', 'tos_cronica').
id_imagen_preg('estornudos', 'estornudos').
id_imagen_preg('secreción nasal', 'secrecion_nasal').
id_imagen_preg('congestión nasal', 'congestion_nasal').
id_imagen_preg('picazón en la nariz', 'picazon_nasal').
id_imagen_preg('lagrimeo', 'lagrimeo').
id_imagen_preg('tos con sangre', 'tos_sangre').
id_imagen_preg('respiración rápida', 'respiracion_rapida').
id_imagen_preg('confusión mental', 'confusion_mental').
id_imagen_preg('tos seca', 'tos_seca').
id_imagen_preg('dolor de garganta', 'dolor_garganta').
id_imagen_preg('malestar en todo el cuerpo','malestar_cuerpo').
id_imagen_preg('nauseas', 'nauseas').
id_imagen_preg('vomito', 'vomito').
id_imagen_preg('molestia ante la luz','molestia_luz').
id_imagen_preg('depresion', 'depresion').
id_imagen_preg('sudor excesivo','sudor_excesivo').
id_imagen_preg('tension', 'tension').
id_imagen_preg('falta de concentracion', 'falta_concentracion').
id_imagen_preg('ataques de panico','ataques_panico').
id_imagen_preg('urticaria', 'urticaria').
id_imagen_preg('eccemas','eccemas').
id_imagen_preg('cansancio','cansancio').
id_imagen_preg('palidez de la piel','palidez_piel').
id_imagen_preg('desmayos','desmayos').
id_imagen_preg('palpitaciones','palpitaciones').
id_imagen_preg('cefalea','cefalea').
id_imagen_preg('dolor en el cuello','dolor_cuello').
id_imagen_preg('rigidez','rigidez').
id_imagen_preg('palpitacion dolorosa en el cuello','palpitaciones_cuello').
id_imagen_preg('dolor en uno o ambos brazos','dolor_brazos').
id_imagen_preg('torticolis','torticolis').
id_imagen_preg('diarrea','diarrea').
id_imagen_preg('decaimiento','decaimiento').
id_imagen_preg('piel apergaminada','piel_apergaminada').
id_imagen_preg('dolores musculares','dolores_musculares').
id_imagen_preg('sudor frio en el rostro','sudor_rostro').
id_imagen_preg('dolor abdominal','dolor_abdominal').
id_imagen_preg('estreñimiento','estrenimiento').
id_imagen_preg('distension abdominal','distension_abdominal').
id_imagen_preg('alteracion emocional','alteracion_emocional').
id_imagen_preg('parpados pegados','parpados_pegados').
id_imagen_preg('secrecion matinales','secrecion_matinales').
id_imagen_preg('molestia en la vista','molestia_vista').
id_imagen_preg('ojos enrojesidos','ojos_enrojesidos').
id_imagen_preg('ojos llorosos','ojos_llorosos').
id_imagen_preg('ojos hinchados','ojos_hinchados').
id_imagen_preg('tos perruna','tos_perruna').
id_imagen_preg('jadeo','jadeo').
id_imagen_preg('piel de la cara azulada','piel_azulada').
id_imagen_preg('flatulencia','flatulencia').
id_imagen_preg('aletargamiento','aletargamiento').
id_imagen_preg('perdida de memoria','perdida_memoria').
id_imagen_preg('sensacion de desequilibrio','sensacion_desequilibrio').
id_imagen_preg('hormigueo en las extremidades','hormigueo_extremidades').
id_imagen_preg('transtornos oculares','transtornos_oculares').
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



 /* MOTOR DE INFERENCIA: Esta parte del sistema experto se encarga de
 inferir cual es el diagnostico a partir de las preguntas realizadas
 */
:- dynamic conocido/1.

  mostrar_diagnostico(X):-haz_diagnostico(X),clean_scratchpad.
  mostrar_diagnostico(lo_siento_diagnostico_desconocido):-clean_scratchpad .

  haz_diagnostico(Diagnosis):-
                            obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas),
                            prueba_presencia_de(Diagnosis, ListaDeSintomas).


obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas):-
                            conocimiento(Diagnosis, ListaDeSintomas).


prueba_presencia_de(Diagnosis, []).
prueba_presencia_de(Diagnosis, [Head | Tail]):- prueba_verdad_de(Diagnosis, Head),
                                              prueba_presencia_de(Diagnosis, Tail).


prueba_verdad_de(Diagnosis, Sintoma):- conocido(Sintoma).
prueba_verdad_de(Diagnosis, Sintoma):- not(conocido(is_false(Sintoma))),
pregunta_sobre(Diagnosis, Sintoma, Reply), Reply = 'si'.


pregunta_sobre(Diagnosis, Sintoma, Reply):- preguntar(Sintoma,Respuesta),
                          process(Diagnosis, Sintoma, Respuesta, Reply).


process(Diagnosis, Sintoma, si, si):- asserta(conocido(Sintoma)).
process(Diagnosis, Sintoma, no, no):- asserta(conocido(is_false(Sintoma))).


clean_scratchpad:- retract(conocido(X)), fail.
clean_scratchpad.



conocido(_):- fail.

not(X):- X,!,fail.
not(_).



