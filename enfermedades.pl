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
 resource(asma, image, image('tratamiento.jpg')).
 resource(influenza, image, image('tratamiento.jpg')).
 resource(bronquitis, image, image('tratamiento.jpg')).
 resource(covid19, image, image('tratamiento.jpg')).
 resource(rinitis, image, image('tratamiento.jpg')).
 resource(pulmonia, image, image('tratamiento.jpg')).
 resource(enfisema, image, image('tratamiento.jpg')).
 resource(neumonia, image, image('tratamiento.jpg')).
 resource(lo_siento_diagnostico_desconocido, image, image('desconocido.jpg')).
 resource(tos_cronica, image, image('tos_cronica.jpg')).
 resource(fiebre, image, image('fiebre.jpg')).
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
 resource(nauseas, image, image('confusion_mental.jpg')).
 resource(vomito, image, image('tos_seca.jpg')).
 resource(molestia_luz, image, image('dolor_garganta.jpg')).
 resource(depresion, image, image('tos_seca.jpg')).
 resource(sudor_excesivo, image, image('dolor_garganta.jpg')).
 resource(tension, image, image('confusion_mental.jpg')).
 resource(falta_concentracion, image, image('tos_seca.jpg')).
 resource(ataques_panico, image, image('dolor_garganta.jpg')).


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

% Enfermedades respiratorias
/*
conocimiento('mex',
    ['tos persistente', 'ma', 'me', 'mi']).

conocimiento('muert',
    ['goteo nasal', 'dolor en el pecho', 'cccc']).

conocimiento('vida',
    ['pa', 'dolor en el pecho', 'cvcv']).

conocimiento('crciendo',
    ['paola', 'dolor en el pecho', 'cxcx']).

*/
% 1
conocimiento('covid19',
    ['fiebre', 'tos seca', 'dificultad para respirar', 'fatiga', 'dolor de garganta']).
% 2
conocimiento('pulmonia',
    ['fiebre', 'tos con sangre', 'respiración rápida', 'confusión mental', 'dolor en el pecho']).
% 3
conocimiento('influenza',
    ['fiebre', 'tos severa', 'escalofríos', 'dolor muscular', 'dolor de cabeza']).
% 4
conocimiento('bronquitis',
    ['fiebre', 'tos con esputo', 'dificultad para respirar', 'fatiga', 'opresión en el pecho']).
% 5
conocimiento('neumonia',
    ['fiebre', 'tos con esputo', 'dificultad para respirar', 'dolor en el pecho', 'debilidad']).
% 6
conocimiento('Meningitis',
    ['fiebre', 'dolor de cabeza', 'nauseas', 'vomito', 'molestia ante la luz', 'confusión mental']).
% 7
conocimiento('gripe',
    ['fiebre', 'dolor de cabeza', 'escalofrios', 'dolor de garganta', 'malestar en todo el cuerpo']).
% 8
conocimiento('estres',
    ['dolor de cabeza', 'depresion', 'sudor excesivo', 'tension', 'falta de concentracion', 'ataques de panico']).
% 9
conocimiento('disenteria',
    ['nauseas', 'vomito', 'dolor abdominal', 'flatulencia', 'aletargamiento', 'debilidad']).
% 10
conocimiento('enfisema',
    ['dificultad para respirar', 'sibilancias', 'opresión en el pecho', 'fatiga', 'tos crónica']).
% 11
conocimiento('asma',
    ['sibilancias', 'dificultad para respirar', 'opresión en el pecho', 'tos persistente']).
% 12
conocimiento('rinitis',
    ['estornudos', 'secreción nasal', 'congestión nasal', 'picazón en la nariz', 'lagrimeo']).
% 13
conocimiento('alergia',
    ['estornudos', 'urticaria', 'eccemas', 'dificultad de respirar']).
% 14
conocimiento('amigdalitis',
    ['fiebre', 'dolor de cabeza', 'vomitos', 'molestia al tragar', 'perdida de apetito']).
% 15
conocimiento('anemia',
    ['cansancio', 'palidez de la piel', 'desmayos', 'palpitaciones', 'cefalea']).
% 16
conocimiento('cervicalgia',
    ['dolor en el cuello', 'rigidez', 'palpitacion dolorosa en el cuello', 'dolor en uno o ambos brazos', 'torticolis']).
% 17
conocimiento('colera',
    ['diarrea', 'vomitos', 'decaimiento', 'piel apergaminada', 'dolores  musculares', 'sudor frio en el rostro']).
% 18
conocimiento('colon irritado',
    ['dolor abdominal', 'estreñimiento', 'distension abdominal', 'nauseas', 'vomitos', 'alteracion emocional', 'depresion']).
% 19
conocimiento('conjutivitis',
    ['parpados pegados', 'secrecion matinales', 'molestia en la vista', 'ojos enrojesidos', 'ojos llorosos', 'ojos hinchados']).
% 20
conocimiento('crup',
    ['tos perruna', 'dificultad para respirar', 'jadeo', 'piel de la cara azulada']).
% 21
% 22
% 23
% 24
% 25
% 26
% 27
% 28
% 29
% 30
% 31
% 32
% 33
% 34
% 35
% 36
% 37
% 38
% 39
% 40
% 41
% 42
% 43
% 44
% 45
% 46
% 47
% 48
% 49
% 50

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Identificadores de imágenes
id_imagen_preg('fiebre', 'fiebre').
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
id_imagen_preg('nauseas', 'nauseas').
id_imagen_preg('vomito', 'vomito').
id_imagen_preg('molestia ante la luz', 'molestia_luz').
id_imagen_preg('depresion', 'depresion').
id_imagen_preg('sudor excesivo', 'sudor_excesivo').
id_imagen_preg('tension', 'tension').
id_imagen_preg('falta de concentracion', 'falta_concentracion').
id_imagen_preg('ataques de panico', 'ataques_panico').


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



