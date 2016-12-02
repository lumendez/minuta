Area.create!([
  {nombre: "Mecánica"},
  {nombre: "Sistemas"},
  {nombre: "Eléctrica"},
  {nombre: "Electrónica"},
  {nombre: "Mecánica"},
  {nombre: "Sistemas"},
  {nombre: "Telecomunicaciones"},
  {nombre: "Eléctrica"},
  {nombre: "Mecánica"},
  {nombre: "Sistemas"}
])
ClaveSemestre.create!([
  {semestre: "A2016"},
  {semestre: "B2016"},
  {semestre: "A2017"},
  {semestre: "B2017"},
  {semestre: "A2018"},
  {semestre: "B2018"},
  {semestre: "A2019"},
  {semestre: "B2019"},
  {semestre: "A2020"},
  {semestre: "B2020"},
  {semestre: "A2021"}
])
Consejero.create!([
  {nombre: "Dra. Claudia Hernández Aguilar"},
  {nombre: "Dr. Flavio Arturo Domínguez Pacheco"},
  {nombre: "Dr. Iván Enrique Campos Silva"},
  {nombre: "Dr. Germán Aníbal Rodríguez Castro"},
  {nombre: "Dr. José Martínez Trinidad"},
  {nombre: "Dr. Daniel Rodríguez Saldaña"}
])
CoordinadorNombre.create!([
  {nombre: "Dr. Daniel Ruiz Vega"},
  {nombre: "Dr. Suren Stolik Isakina"},
  {nombre: "Dr. José Martínez Trinidad"},
  {nombre: "Dra. Rosalba Zepeda Bautista"},
  {nombre: "M. en C. Miguel Sánchez Meraz"}
])
ElectricaAsignatura.create!([
  {nombre: "Análisis de sistemas lineales", clave: "1759"},
  {nombre: "Modelado y simulación (teoría del control)", clave: "937"},
  {nombre: "Teoría electromagnética", clave: "3135"},
  {nombre: "Máquinas avanzadas II", clave: "492"},
  {nombre: "Planeación de sistemas eléctricos de potencia", clave: "637"},
  {nombre: "Programación en tiempo real", clave: "733"},
  {nombre: "Cálculo avanzado para ingenieros II", clave: "745"},
  {nombre: "Operación de sistemas eléctricos de potencia", clave: "797"},
  {nombre: "Tópicos avanzados de control", clave: "971"},
  {nombre: "Análisis estocástico de sistemas eléctricos de potencia", clave: "1752"},
  {nombre: "Electrónica de potencia", clave: "1762"},
  {nombre: "Técnicas computacionales para el análisis de sistemas electrónicos de potencia", clave: "1765"},
  {nombre: "Protección de sistemas eléctricos de potencia", clave: "2136"},
  {nombre: "Control adaptable", clave: "2931"},
  {nombre: "Diseño de generadores síncronos", clave: "2932"},
  {nombre: "Tópicos selectos en ingeniería eléctrica", clave: "2974"},
  {nombre: "Sistemas no lineales", clave: "2983"},
  {nombre: "Accionamiento electrónico de motores de corriente alterna", clave: "3078"},
  {nombre: "Transitorios electromagnéticos en sistemas eléctricos de potencia (alta tensión II)", clave: "3136"},
  {nombre: "Coordinación de aislamiento", clave: "3138"},
  {nombre: "Ingeniería de altas tensiones", clave: "3139"},
  {nombre: "Ruptura eléctrica en gases, sólidos y líquidos", clave: "3141"},
  {nombre: "Control óptimo", clave: "3250"},
  {nombre: "Control de los accionamientos electrónicos de motores de corriente alterna", clave: "3251"},
  {nombre: "Accionamiento electrónico de motores", clave: "3252"},
  {nombre: "Control digital", clave: "3253"},
  {nombre: "Procesamiento de señales digitales", clave: "3255"},
  {nombre: "Servicios de transmisión de energía eléctrica en sistemas eléctricos de potencia desregulados", clave: "3723"},
  {nombre: "Técnicas de optimización para el análisis de sistemas eléctricos de potencia", clave: "3727"},
  {nombre: "Fundamentos de control robusto: enfoque paramétrico", clave: "3893"},
  {nombre: "Técnicas de medición de potencia pulsada", clave: "3140"},
  {nombre: "Pruebas y operación de apartarayos de zno", clave: "3142"},
  {nombre: "Técnicas numéricas para el cálculo de campos magnéticos", clave: "3143"},
  {nombre: "Redes de Distribución", clave: "774"},
  {nombre: "Modelado avanzado de componentes dinámicos para estudios de estabilidad", clave: "05B4691"},
  {nombre: "Seguridad de sistemas eléctricos de potencia", clave: "06A4743"},
  {nombre: "Técnicas numéricas para análisis transitorio", clave: "06A4745"},
  {nombre: "Control neurodifuso", clave: "06A4753"},
  {nombre: "Control robusto", clave: "06A4755"},
  {nombre: "Control de voltaje de sistemas eléctricos de potencia", clave: "07A4946"},
  {nombre: "Control de velocidad de sistemas electricos de potencia", clave: "07A4945"},
  {nombre: "Aplicación de la electrónica de potencia a los facts", clave: "07A5146"},
  {nombre: "Proyectos de mejora de procesos", clave: "08A5332"},
  {nombre: "Análisis y control de oscilaciones en sistemas eléctricos de potencia", clave: "08B5506"},
  {nombre: "Técnicas de control preventivo de estabilidad en sistemas eléctricos de potencia", clave: "08B5507"},
  {nombre: "Análisis y control de facts en sistemas eléctricos de potencia", clave: "09B5761 "},
  {nombre: "Sistemas de tracción eléctrica", clave: "09B5770"},
  {nombre: "Algoritmos de optimización estática", clave: "09B5815"},
  {nombre: "Estabilidad de sistemas eléctricos de potencia", clave: "10A5889"},
  {nombre: "Análisis de sistemas eléctricos de potencia", clave: "10A5890"},
  {nombre: "Fuentes renovables", clave: "10A5891"},
  {nombre: "Protección de sistemas de distribución", clave: "10A5892"},
  {nombre: "La calidad de la energía en los sistemas eléctricos", clave: "10A5893"},
  {nombre: "Máquinas avanzadas I", clave: "10A5894"},
  {nombre: "Técnicas digitales para medición y protección de sep's", clave: "10A5856"},
  {nombre: "Señales y variables aleatorias", clave: "10A5857"},
  {nombre: "Control neurodifuso", clave: "10A5858"},
  {nombre: "Sistemas de redes neuronales artificiales", clave: "10A5859"},
  {nombre: "Control de sistemas eléctricos de potencia", clave: "10A5860"},
  {nombre: "Control inteligente", clave: "10A5861"},
  {nombre: "Microcontroladores", clave: "10A5862"},
  {nombre: "Modelado  de equipo eléctrico para transitorios electromagnéticos", clave: "10B6149"},
  {nombre: "Técnicas numéricas para análisis transitorio", clave: "10B6150"},
  {nombre: "Diseño de transformadores de potencia y de distribución", clave: "11B6369"},
  {nombre: "Análisis de armónicas en sistemas eléctricos de potencia", clave: "11A6263"},
  {nombre: "Análisis de series de tiempo", clave: "11A6266"},
  {nombre: "Dispositivos programables para electrónica de potencia", clave: "11A6258"},
  {nombre: "Control de convertidores electrónicos de potencia", clave: "11A6243"},
  {nombre: "Protección adaptable de sistemas de potencia", clave: "10A6073"},
  {nombre: "Análisis y operación de redes de distribución eléctrica", clave: "10B6089"}
])
ElectricaConsejero.create!([
  {nombre: "M. en C. Tomás I. Asiaín Olivares"},
  {nombre: "Dr. Mohamed Badaoui"},
  {nombre: "M. en C. José Héctor Caltenco Franca"},
  {nombre: "Dr. Oscar Carranza Castillo"},
  {nombre: "Dr. Raúl Cortés Mateos"},
  {nombre: "M. en C. Gilberto Enríquez Harper"},
  {nombre: "Dr. Fermín Pascual Espino Cortés"},
  {nombre: "Dr. Leszek Kawecki Zlotkowska"},
  {nombre: "Dr. Andriy Kryvko"},
  {nombre: "Dr. Domitilio Libreros"},
  {nombre: "Dr. Roberto Linares y Miranda"},
  {nombre: "Dr. Ricardo Mota Palomino"},
  {nombre: "Dr. Daniel Olguín Salinas"},
  {nombre: "Dr. Floriberto Ortíz Rodriguez"},
  {nombre: "Dr. Raúl Peña Rivero"},
  {nombre: "M. en C. Jesús Reyes García"},
  {nombre: "Dr. Jaime Robles García"},
  {nombre: "Dr. Jaime José Rodríguez Rivas"},
  {nombre: "Dr. David Romero Romero"},
  {nombre: "Dr. German Rosas Ortiz"},
  {nombre: "Dr. Daniel Ruiz Vega"},
  {nombre: "Dr. David Sebastián Baltazar"},
  {nombre: "Dr. Alfredo Tirado Méndez"}
])
ElectronicaAsignatura.create!([
  {nombre: "Cálculo avanzado para ingenieros I", clave: "1013"},
  {nombre: "Microcomputadoras e interfaces", clave: "1451"},
  {nombre: "Seminario departamental I", clave: "1675"},
  {nombre: "Dispositivos electrónicos básicos", clave: "3731"},
  {nombre: "Teoría electromagnética I", clave: "951"},
  {nombre: "Seminario departamental IV", clave: "1675"},
  {nombre: "Procesamiento digital de señales", clave: "2147"},
  {nombre: "Electrónica de bajo ruido", clave: "3733"},
  {nombre: "Teoría electromagnética", clave: "3695"},
  {nombre: "Circuitos electrónicos", clave: "1034"},
  {nombre: "Seminario departamental II", clave: "1674"},
  {nombre: "Seminario departamental III", clave: "1675"},
  {nombre: "Tópicos selectos de procesamiento digital de señales", clave: "3164"},
  {nombre: "Instrumentación fotónica", clave: "3892"},
  {nombre: "Instrumentación y Sistemas de Medición", clave: "02A4169"},
  {nombre: "Compatibilidad electromagnética en Sistemas Electrónicos", clave: "02A4170"},
  {nombre: "Trabajo de tesis", clave: "05B4670"},
  {nombre: "Interfaces para la instrumentación electrónica", clave: "06A4748"},
  {nombre: "Tópicos selectos en ingeniería eléctrica", clave: "2974"},
  {nombre: "Sensores y actuadores", clave: "08A5423"},
  {nombre: "Tópicos selectos de diseño digital", clave: "07B5165"},
  {nombre: "Temas selectos de procesamiento de señales", clave: "07B5164"},
  {nombre: "Interacción de la radiación electromagnética con la materia", clave: "10A5840"},
  {nombre: "Análisis de errores de medición", clave: "10A5842"},
  {nombre: "Técnicas de diseño y medición de circuitos de rf y microondas", clave: "12A6427"},
  {nombre: "Temas selectos de electrónica", clave: "12A6428"},
  {nombre: "Métodos numéricos aplicados al electromagnetismo", clave: "12A6429"},
  {nombre: "Procesamiento digital de imágenes multiespectrales y multicanales", clave: "11A6256"},
  {nombre: "Señales y sistemas", clave: "10B6236"},
  {nombre: "Cálculo avanzado para ingenieros", clave: "10B6147"}
])
ElectronicaConsejero.create!([
  {nombre: "Dra. Ivonne Bazán Trujillo"},
  {nombre: "Dr. José Manuel De La Rosa Vázquez"},
  {nombre: "Dr. José Hiram Espina Hernández"},
  {nombre: "Dr. Francisco Javier Gallegos Funes"},
  {nombre: "Dr. José Alberto Pérez Benítez"},
  {nombre: "Dr. Alberto Jorge Rosales Silva"},
  {nombre: "Dr. Suren Stolik Isakina"}
])
Estado.create!([
  {estado: "Pendiente"},
  {estado: "Procede realizar trámite ante la SIP"},
  {estado: "Finalizado"}
])
ExamenTipo.create!([
  {tipo: "Examen a puerta abierta de doctorado"},
  {tipo: "Examen a puerta abierta de especialización"},
  {tipo: "Examen a puerta abierta de maestría"},
  {tipo: "Examen a puerta cerrada de doctorado"},
  {tipo: "Examen a puerta cerrada de especialización"},
  {tipo: "Examen a puerta cerrada de maestría"},
  {tipo: "Examen predoctoral"}
])
MecanicaAsignatura.create!([
  {nombre: "Diseño mecánico avanzado", clave: "196"},
  {nombre: "Mecánica del medio continuo", clave: "540"},
  {nombre: "Dinámica de gases", clave: "2153"},
  {nombre: "Convección de calor y difusión térmica", clave: "2154"},
  {nombre: "Dinámica de turbomaquinaria", clave: "2163"},
  {nombre: "Tópicos selectos de matemáticas", clave: "2165"},
  {nombre: "Curso avanzado de turbinas de vapor", clave: "3092"},
  {nombre: "Curso avanzado de turbinas de gas", clave: "3093"},
  {nombre: "Dinámica computacional de fluidos (fsm)", clave: "3094"},
  {nombre: "Dinámica de flujos bifásicos", clave: "3095"},
  {nombre: "Fenómenos de transporte", clave: "3096"},
  {nombre: "Técnicas energéticas", clave: "3097"},
  {nombre: "Transferencia de calor", clave: "3098"},
  {nombre: "El método del elemento finito en el análisis de vibraciones mecánicas", clave: "3100"},
  {nombre: "Mecánicas no lineales", clave: "3101"},
  {nombre: "Mecánica de la fractura", clave: "3102"},
  {nombre: "Seminario departamental I", clave: "3103"},
  {nombre: "Seminario departamental II", clave: "3104"},
  {nombre: "Seminario departamental III", clave: "3105"},
  {nombre: "Trabajo de tesis", clave: "05B4670"},
  {nombre: "Tópicos selectos de biomecánica", clave: "02B4206"},
  {nombre: "Tópicos selectos en método del elemento finito", clave: "03A4278"},
  {nombre: "Dinámica de fractura", clave: "03A4277"},
  {nombre: "Tópicos selectos en análisis numéricos: temática", clave: "03A4279"},
  {nombre: "Tópicos selectos de análisis experimental de esfuerzos: temática", clave: "02B4208"},
  {nombre: "Geometría fractal", clave: "02B4215"},
  {nombre: "Tópicos selectos de mecánica fractal", clave: "03A4273"},
  {nombre: "Diseño auxiliado por computadora", clave: "2166"},
  {nombre: "Procesos dinámicos retardados", clave: "03A4269"},
  {nombre: "Materiales especiales en ingeniería", clave: "06A4744"},
  {nombre: "Superficies y contacto mecánico", clave: "05B4714"},
  {nombre: "Diagnóstico y prognosis de vibraciones en maquinaria", clave: "03A4282"},
  {nombre: "Tópicos selectos en rotodinámica", clave: "03A4280"},
  {nombre: "Mecánica fractal", clave: "02B4213"},
  {nombre: "Tópicos selectos de control", clave: "02A4179"},
  {nombre: "Tópicos selectos de materiales", clave: "02B4217"},
  {nombre: "Método del elemento Finito", clave: "02B4207"},
  {nombre: "Método del elemento Finito Frontera", clave: "02A4180"},
  {nombre: "Tópicos selectos de tribología", clave: "02A4177"},
  {nombre: "Tópicos selectos de mecánica de fractura: temática", clave: "02B4210"},
  {nombre: "Ecuaciones diferenciales parciales no-lineales", clave: "03A4274"},
  {nombre: "Ingeniería de tratamientos termoquímicos aplicados a componentes mecánicos", clave: "07A4947"},
  {nombre: "Tópicos selectos de métodos variacionales", clave: "02A4275"},
  {nombre: "Introducción a la dinámica de fluidos", clave: "2985"},
  {nombre: "Ecuaciones integrales", clave: "02A4178"},
  {nombre: "Técnicas digitales para la medición  y protección de sep's", clave: "05B4690"},
  {nombre: "Propiedades mecánicas de los materiales", clave: "02B4214"},
  {nombre: "Mecánica de fluidos", clave: "533"},
  {nombre: "Análisis estructural", clave: "07A4938"},
  {nombre: "Lubricación hidrodinámica avanzada", clave: "03A4281"},
  {nombre: "Inestabilidad en flujos", clave: "09A5653"},
  {nombre: "Tópicos selectos de contacto mecánico", clave: "12B6510"},
  {nombre: "Seminario departamental I", clave: "08B5442"},
  {nombre: "Mecánica de fluidos", clave: "08B5439"},
  {nombre: "Termodinámica", clave: "08B5440"},
  {nombre: "Seminario departamental II", clave: "08B5443"},
  {nombre: "Transmisión de calor", clave: "08B5441"},
  {nombre: "Combustión", clave: "08B5444"},
  {nombre: "Generadores de vapor", clave: "08B5445"},
  {nombre: "Intercambiadores de calor", clave: "08B5446"},
  {nombre: "Turbinas de gas", clave: "08B5447"},
  {nombre: "Turbinas de vapor", clave: "08B5448"},
  {nombre: "Turbocompresores", clave: "08B5449"},
  {nombre: "Tratamiento de aguas", clave: "08B5450"},
  {nombre: "Bombas hidráulicas", clave: "08B5451"},
  {nombre: "Ventiladores", clave: "08B5452"},
  {nombre: "Administración de la energía", clave: "08B5453"},
  {nombre: "Sistemas de gestion ambiental", clave: "08B5454"},
  {nombre: "Uso eficiente de la energía térmica", clave: "08B5455"},
  {nombre: "Ciclos combinados", clave: "08B5456"},
  {nombre: "Cogeneración", clave: "08B5457"},
  {nombre: "Torres de enfriamiento", clave: "08B5458"},
  {nombre: "Trabajo de tesina", clave: "10B6092"},
  {nombre: "Ahorro de energía en los procesos térmicos", clave: "10B6231"},
  {nombre: "Análisis de sistemas de refrigeración", clave: "10B6232"},
  {nombre: "Sistemas de generación eólica", clave: "10B6233"},
  {nombre: "Tópicos selectos de materiales", clave: "11A6302"},
  {nombre: "Cinetostática de manipuladores robóticos", clave: "12A6436"},
  {nombre: "Caracterización mecánica en sistemas micro y nano estructurados", clave: "12A6440"},
  {nombre: "Introducción al estudio de sistemas nanoestructurados", clave: "09B5762"},
  {nombre: "Análisis, diseño y simulación de sistemas dinámicos de control", clave: "09B5763"},
  {nombre: "Diseño y técnicas de caracterización para superficies endurecidas", clave: "09B5764"},
  {nombre: "Diagnóstico y prognosis de vibraciones en maquinaria", clave: "03A4282"},
  {nombre: "Análisis de flujo turbulento", clave: "08B5560"},
  {nombre: "Modelación geométrica de sólidos", clave: "08B5505"},
  {nombre: "Atenuación de vibraciones con control digital", clave: "08A5330"},
  {nombre: "Métodos de control para el seguimiento de referencias en sistemas vibratorios no lineales", clave: "08A5387"},
  {nombre: "Diseño para el ensamble y la manufactura", clave: "02A4182"},
  {nombre: "Análisis operativo de sistemas de generación", clave: "06A4757"},
  {nombre: "Tecnología y diseño industrial", clave: "07A4868"},
  {nombre: "Industria metalmecánica", clave: "07A4867"},
  {nombre: "Tópicos selectos de métodos variacionales", clave: "002B4275"},
  {nombre: "Introducción a la dinámica de fluidos computacional", clave: "2985"},
  {nombre: "Turbulencia", clave: "07A4872"},
  {nombre: "Dinámica de fluidos computacionales avanzada", clave: "07A4873"},
  {nombre: "Diseño asistido por computadora", clave: "2166"},
  {nombre: "Materiales especiales en ingeniería", clave: "O6A4744"},
  {nombre: "Mecánica de la fractura", clave: "02B4216"},
  {nombre: "Diseño mecánico", clave: "2151"},
  {nombre: "Resistencia de materiales", clave: "784"},
  {nombre: "Análisis y síntesis de mecanismos", clave: "2150"},
  {nombre: "Termoeconomía", clave: "06A4757"},
  {nombre: "Sistemas no lineales: Estabilidad y control", clave: "03A4270"},
  {nombre: "Ecología en energética", clave: "02A4171"},
  {nombre: "Técnicas experimentales en termofluidos", clave: "02A4173"},
  {nombre: "Tribología", clave: "02A4184"},
  {nombre: "Vibraciones mecánicas no lineales", clave: "02A4186"},
  {nombre: "Control aplicado a servomecanismos", clave: "02A4187"},
  {nombre: "Tópicos selectos de rotodinámica", clave: "03A4280"},
  {nombre: "Control de sistemas dinámicos industriales", clave: "02B4212"},
  {nombre: "Sistemas celulares de producción", clave: "02A4272"},
  {nombre: "Generadores de vapor", clave: "02A4172"},
  {nombre: "Soldadura avanzada", clave: "02A4181"},
  {nombre: "Maquinas tribológicas", clave: "02A4185"},
  {nombre: "Hidrodinámica avanzada", clave: "03A4271"},
  {nombre: "Métodos de aplicación del laser en la manufactura", clave: "03B4329"},
  {nombre: "Matemáticas", clave: "501"},
  {nombre: "Seminario departamental", clave: "806"},
  {nombre: "Termodinámica", clave: "964"},
  {nombre: "Transmisión de calor", clave: "2444"},
  {nombre: "Lubricación", clave: "642"},
  {nombre: "Turbinas de gas I", clave: "977"},
  {nombre: "Turbinas de gas II", clave: "978"},
  {nombre: "Turbinas de vapor I", clave: "979"},
  {nombre: "Turbinas de vapor II", clave: "980"},
  {nombre: "Tratamientos térmicos", clave: "986"},
  {nombre: "Tecnología de la construcción de maquinaria", clave: "1679"},
  {nombre: "Método del elemento finito", clave: "2149"},
  {nombre: "Radiación térmica", clave: "2155"},
  {nombre: "Mecánica de fluidos viscosos", clave: "2156"},
  {nombre: "Combustión", clave: "2157"},
  {nombre: "Equipo para transmisión de calor", clave: "2158"},
  {nombre: "Análisis de vibraciones mecánicas", clave: "2159"},
  {nombre: "Diseño mecánico avanzado", clave: "2160"},
  {nombre: "Análisis experimental de esfuerzos", clave: "2161"},
  {nombre: "Dinámica de máquinas y mecanismos", clave: "2162"},
  {nombre: "Diseño de manipuladores robóticos", clave: "2164"},
  {nombre: "Dinámica de flujos bifásicos", clave: "3534"},
  {nombre: "Tecnología de soldadura", clave: "3654"},
  {nombre: "Metalurgia de soldadura", clave: "3657"}
])
MecanicaConsejero.create!([
  {nombre: "Dra. Rita Aguilar Osorio"},
  {nombre: "Dr. Samuel Alcántara Montes"},
  {nombre: "Dr. Alexander Balankin"},
  {nombre: "Dr. Juan Gabriel Barbosa Saldaña"},
  {nombre: "Dr. Iván Enrique Campos Silva"},
  {nombre: "Dr. Ignacio Carvajal Mariscal"},
  {nombre: "Dr. Luis Héctor Hernández Gómez"},
  {nombre: "Dr. Ezequiel Alberto Gallardo Hernández"},
  {nombre: "Dr. Julio César Gómez Mancilla"},
  {nombre: "Dra. Claudia del Carmen Gutiérrez Torres"},
  {nombre: "Dr. José Alfredo Jiménez Bernal"},
  {nombre: "Dr. José Martínez Trinidad"},
  {nombre: "Dr. Jesús Alberto Meda Campaña"},
  {nombre: "Dr. Alfonso Meneses Amador"},
  {nombre: "Dr. Alexander Michtchenko"},
  {nombre: "Dr. Luis Alfonso Moreno Pacheco"},
  {nombre: "Dr. Eduardo Oliva López"},
  {nombre: "Dr. José Ángel Lodegario Ortega Herrera"},
  {nombre: "M. en C. Candido Palacios Montufar"},
  {nombre: "Dr. Georgiy Polupan"},
  {nombre: "Dr. Pedro Quinto Diez"},
  {nombre: "Dr. German Anibal Rodríguez Castro"},
  {nombre: "Dr. Didier Samayoa Ochoa"},
  {nombre: "Dr. Florencio Sánchez Silva"},
  {nombre: "Dr. Orlando Susarrey Huerta"},
  {nombre: "Dr. Miguel Toledo Velázquez"},
  {nombre: "Dr. Carlos Torres Torres"},
  {nombre: "M. En C. Guilibaldo Tolentino Eslava"},
  {nombre: "Dr. Guillermo Manuel Urriolagoitia Calderón"},
  {nombre: "Dr. Guillermo Urriolagoitia Sosa"},
  {nombre: "Dr. Manuel Vite Torres"}
])
SepiPrograma.create!([
  {nombre: "Especialización en Ingeniería Térmica"},
  {nombre: "Especialización en Ingeniería de Sistemas"},
  {nombre: "Maestría en Ciencias en Ingeniería Eléctrica"},
  {nombre: "Maestría en Ciencias en Ingeniería Electrónica"},
  {nombre: "Maestría en Ciencias en Ingeniería Mecánica"},
  {nombre: "Maestría en Ciencias en Ingeniería de Sistemas"},
  {nombre: "Maestría en Ciencias en Ingeniería de Telecomunicaciones"},
  {nombre: "Doctorado en Ciencias en Ingeniería Eléctrica"},
  {nombre: "Doctorado en Ciencias en Ingeniería Mecánica"},
  {nombre: "Doctorado en Ciencias en Ingeniería de Sistemas"}
])
SistemasAsignatura.create!([
  {nombre: "Epistemología de ciencia de sistemas", clave: "07A4948"},
  {nombre: "Sistemas complejos", clave: "07A4949"},
  {nombre: "Seminario departamental I", clave: "07A4950"},
  {nombre: "Seminario departamental II", clave: "07A4951"},
  {nombre: "Seminario departamental III", clave: "07A4952"},
  {nombre: "Seminario de tesis", clave: "07A4953"},
  {nombre: "Tópicos selectos de sistemas complejos", clave: "07A4954"},
  {nombre: "Tópicos selectos de sistemas ambientales", clave: "07A4955"},
  {nombre: "Tópicos selectos de sistemas de ingeniería", clave: "07A4956"},
  {nombre: "Tópicos selectos de ingeniería administrativa y económica", clave: "07A4957"},
  {nombre: "Tópicos selectos de sistemas de producción", clave: "07A4958"},
  {nombre: "Tópicos selectos de sistemas de información", clave: "07A4959"},
  {nombre: "Tópicos selectos de ciencia de sistemas", clave: "07A4960"},
  {nombre: "Trabajo de tesis", clave: "05B4670"},
  {nombre: "Seminario departamental IV", clave: "11A6342"},
  {nombre: "Seminario departamental V", clave: "11A6343"},
  {nombre: "Trabajo de tesina", clave: "10A5838"},
  {nombre: "Teoría General de Sistemas", clave: "03B4362"},
  {nombre: "Sistemas de Información", clave: "03B4363"},
  {nombre: "Optimización matemática", clave: "03B4364"},
  {nombre: "Estadística", clave: "03B4365"},
  {nombre: "Evaluación de Proyectos", clave: "03B4366"},
  {nombre: "Sistemas determinísticos", clave: "03B4367"},
  {nombre: "Sistemas probabilísticos", clave: "03B4368"},
  {nombre: "Calidad total", clave: "03B4369"},
  {nombre: "Desarrollo humano", clave: "03B4370"},
  {nombre: "Temas selectos sobre administración", clave: "03B4371"},
  {nombre: "Temas Selectos de Sistemas Socio Técnicos de Calidad", clave: "03B4372"},
  {nombre: "Planeación Estratégica y Prospectiva", clave: "03B4373"},
  {nombre: "Desarrollo organizacional", clave: "03B4374"},
  {nombre: "Ingeniería de Calidad", clave: "03B4375"},
  {nombre: "Auditorias ISO 9000", clave: "03B4376"},
  {nombre: "Sistemas administrativos", clave: "03B4377"},
  {nombre: "Teoría de la Decisión", clave: "03B4378"},
  {nombre: "Diseño e Implantación de Sistemas de Bases de Datos", clave: "03B4379"},
  {nombre: "Planeación y Administración de Sistemas de Información", clave: "03B4380"},
  {nombre: "Calidad y Administración de Sistemas y Centros Informáticos", clave: "03B4381"},
  {nombre: "Administración de Sistemas de Bases de Datos", clave: "03B4382"},
  {nombre: "Temas Selectos de Sistemas de Información", clave: "03B4383"},
  {nombre: "Temas Selectos de Sistemas de Bases de Datos", clave: "03B4384"},
  {nombre: "Teoría general de sistemas", clave: "953"},
  {nombre: "Sistemas de información", clave: "3398"},
  {nombre: "Optimización matemática", clave: "3399"},
  {nombre: "Seminario departamental I", clave: "3400"},
  {nombre: "Seminario departamental II", clave: "3489"},
  {nombre: "Seminario de tesis", clave: "3401"},
  {nombre: "Estadística (Opción Investigación de Operaciones)", clave: "272"},
  {nombre: "Modelos estocásticos (Opción Investigación de Operaciones)", clave: "612"},
  {nombre: "Modelos de pronósticos y series de tiempo (Opción Investigación de Operaciones)", clave: "3282"},
  {nombre: "Sistemas determinísticos (Opción Investigación de Operaciones)", clave: "3402"},
  {nombre: "Sistemas probabilísticos(Opción Investigación de Operaciones)", clave: "3403"},
  {nombre: "Evaluación de proyectos (Opción Investigación de Operaciones)", clave: "3405"}
])
SistemasConsejero.create!([
  {nombre: "Dr. Francisco J. Aceves Hernández"},
  {nombre: "Dra. Elvira Avalos Villarreal"},
  {nombre: "Dr. Isaías Badillo Piña"},
  {nombre: "Dr. Juan Bory Reyes"},
  {nombre: "Dr. Alfredo Cruz Orea"},
  {nombre: "Dr. Juan de la Cruz"},
  {nombre: "Dr. Flavio Arturo Domínguez Pacheco"},
  {nombre: "Dr. Leopoldo Galindo Soria"},
  {nombre: "Dra. Claudia Hernández Aguilar"},
  {nombre: "Dr. Luis Manuel Hernández Simón"},
  {nombre: "M. en C. Efraín Martínez Cruz"},
  {nombre: "Dr. Miguel Ángel Martínez Cruz"},
  {nombre: "Dra. Claudia Lizbeth Martínez González"},
  {nombre: "M. en C. Ernesto Atalo Mercado Ramírez"},
  {nombre: "Dr. Oswaldo Morales Matamoros"},
  {nombre: "Dr. Julián Patiño Ortiz"},
  {nombre: "Dr. Miguel Patiño Ortiz"},
  {nombre: "Dr. Alejandro Peña Ayala"},
  {nombre: "Dr. Ignacio Enrique Peón Escalante"},
  {nombre: "M. en C. Jorge Arturo Reyes Bonilla"},
  {nombre: "Dr. Jorge A. Rojas Ramirez"},
  {nombre: "Dr. Edmundo Sánchez Salguero"},
  {nombre: "Dr. Hugo Sánchez Salguero"},
  {nombre: "Dr. Jaime R. Santos Reyes"},
  {nombre: "Dr. Ricardo Tejeida Padilla"},
  {nombre: "M. en C. René Torres Bejarano"},
  {nombre: "M. en C. Graciela Vázquez Álvarez"},
  {nombre: "Dra. Rosalba Zepeda Bautista"}
])
TelecomAsignatura.create!([
  {nombre: "Sistemas de transmisión", clave: "3010"},
  {nombre: "Trabajo de tesis", clave: "05B4670"},
  {nombre: "Matemáticas", clave: "3655"},
  {nombre: "Tópicos selectos de teoría de las comunicaciones", clave: "3009"},
  {nombre: "Propagación y antenas", clave: "3011"},
  {nombre: "Telefonía", clave: "3012"},
  {nombre: "Procesamiento digital de señales", clave: "3013"},
  {nombre: "Redes de computadoras", clave: "3014"},
  {nombre: "Calidad integral un modelo y metodología", clave: "3015"},
  {nombre: "Satélites", clave: "3016"},
  {nombre: "Tópicos selectos de sistemas de comunicaciones por fibras ópticas", clave: "3017"},
  {nombre: "Tópicos selectos de red digital de servicios integrados", clave: "3018"},
  {nombre: "Tópicos selectos de radiocomunicación y sistemas de comunicación celulares", clave: "3019"},
  {nombre: "Teletráfico", clave: "3020"},
  {nombre: "Procesamiento digital de señales de voz", clave: "3021"},
  {nombre: "Tópico selectos de transmisores y receptores", clave: "3022"},
  {nombre: "Circuitos de microondas", clave: "3023"},
  {nombre: "Tópicos selectos de planeación de", clave: "3024"},
  {nombre: "Tópicos selectos de metrología en", clave: "3025"},
  {nombre: "Tópicos selectos de normatividad en", clave: "3026"},
  {nombre: "Tópicos selectos de teoría de códigos", clave: "3027"},
  {nombre: "Tópicos selectos de sistemas distribuidos", clave: "3028"},
  {nombre: "Tópicos selectos de sistemas multimedia", clave: "3029"},
  {nombre: "Tópicos selectos de procesamiento de imágenes", clave: "3030"},
  {nombre: "Seminario departamental I", clave: "3031"},
  {nombre: "Seminario departamental II", clave: "3032"},
  {nombre: "Seminario departamental III", clave: "3033"},
  {nombre: "Proyecto I", clave: "3034"},
  {nombre: "Tópicos selectos de sistemas de comunicaciones móviles", clave: "3656"},
  {nombre: "Teoría estadística de las comunicaciones", clave: "3660"},
  {nombre: "Procesos aleatorios y elementos de matemática estadística", clave: "3661"},
  {nombre: "Métodos de análisis de procesos ondulatorios", clave: "3728"}
])
TelecomConsejero.create!([
  {nombre: "Dra. Elena Acevedo Mosqueda"},
  {nombre: "Dr. Marco Antonio Acevedo Mosqueda"},
  {nombre: "Dr. Salvador Álvarez Ballesteros"},
  {nombre: "Dra. Patricia Camarena Gallardo"},
  {nombre: "Dr. Raúl Castillo Pérez"},
  {nombre: "Dr. Mauro Enciso Aguilar"},
  {nombre: "Dra. Martha Galaz Larios"},
  {nombre: "Dr. Vladimir Kazakov"},
  {nombre: "Dr. Héctor Oviedo Galdeano"},
  {nombre: "Dr. Vladimir Rabinovitch"},
  {nombre: "Dr. Eloy Ramírez García"},
  {nombre: "Dr. Luis Manuel Rodríguez Mendez"},
  {nombre: "Dr. Daniel Rodríguez Saldaña"},
  {nombre: "M. en C. Miguel Sánchez Meraz"},
  {nombre: "Dr. Carlos Sosa Paz"},
  {nombre: "Dr. Jorge Roberto Sosa Pedroza"},
  {nombre: "M. en C. Sergio Vidal Beltrán"}
])
TiposUsuario.create!([
  {tipo: "Alumno"},
  {tipo: "Consejero"},
  {tipo: "Coordinador"},
  {tipo: "Administrador"},
  {tipo: "Control escolar"}
])
