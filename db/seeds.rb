Teacher.find_or_create_by([
{ first_name: 'ALEXANDRA RAYANA SOUZA XAVIER BRAGA', email: 'timbovanessa@gmail.com', phone: nil },
{ first_name: 'ALLAN EMERSON FELIX LIBERATO', email: 'allanliberato75@gmail.com', phone: nil },
{ first_name: 'ANA SHEILA ALVES TRINDADE', email: 'sheilatrd@gmail.com', phone: nil },
{ first_name: 'DANIEL STEFANI DO CARMO LIMA', email: 'danieldocarmosobral@yahoo.com.br', phone: nil },
{ first_name: 'FRANCISCO RANIERE LIBERATO AGUIAR', email: 'raniereaguiar@gmail.com', phone: nil },
{ first_name: 'FRANCISCO THADEU FERNANDES CARNEIRO', email: 'sheeptadeu@gmail.com', phone: nil },
{ first_name: 'GEOVANI ALVES TEOTONIO', email: 'profgeovaniteotonio@gmail.com', phone: nil },
{ first_name: 'JOAO ALVES DE ARAUJO JUNIOR', email: 'jdam11@gmail.com', phone: nil },
{ first_name: 'JOSE CHARLES RIBEIRO DE SOUSA', email: 'jcharlesribeiro@gmail.com', phone: nil },
{ first_name: 'KENIA MOURA CARVALHO', email: 'kenia.carvalho@prof.santanavirtual.com.br', phone: nil },
{ first_name: 'LILIANE MOREIRA ALVES ARAGAO', email: 'liliane_alvesprofessora@hotmail.com', phone: nil },
{ first_name: 'LINCOLN MICHEL DE OLIVEIRA ARAGAO', email: '', phone: nil },
{ first_name: 'LUIS RICARDO LIMA DA SILVA', email: '', phone: nil },
{ first_name: 'MARA ROGELMA SOARES TORRES FRAZAO', email: 'mara.frazao@prof.santanavirtual.com.br', phone: nil },
{ first_name: 'MARIA DA CONCEICAO FROTA SOLON NETA', email: 'ceicasolon07@gmail.com', phone: nil },
{ first_name: 'MARIA JOSE SABINO MONTE NASCIMENTO', email: 'sinhazinha_monte@hotmail.com', phone: nil },
{ first_name: 'SARAH ELIZABETH FERREIRA DE VASCONCELOS', email: 'professorasarahmedeiros@gmail.com', phone: nil },
{ first_name: 'SILVIA MARIA PORTELA FERREIRA', email: 'silviaportelaferreira@gmail.com', phone: nil },
{ first_name: 'THIAGO OLIVEIRA DE PAULA', email: 'thiago.oliver1990@gmail.com', phone: nil },
{ first_name: 'TIANA MARA DOURADO DE SOUSA', email: 'professoratianamara@yahoo.com.br', phone: nil },
{ first_name: 'UBIRANY SOUSA DE FARIAS', email: 'ubirabets@gmail.com', phone: nil },
{ first_name: 'VALDECLESIO FARRAPO COSTA', email: 'valdeclesio@hotmail.com', phone: nil },
{ first_name: 'VANESSA URANO TIMBO DE LIMA', email: 'timbovanessa@gmail.com', phone: nil },
{ first_name: 'ANDREA ABREU DE SA AZEVEDO', email: 'andrea.azevedo@prof.santanavirtual.com.br', phone: nil },
{ first_name: 'ANTONIO ALEXANDRE SAMPAIO', email: 'prof.xandysampaio@hotmail.com', phone: nil },
{ first_name: 'ELIANO IBIAPINA BEZERRA', email: 'elianoib@hotmail.com', phone: nil },
{ first_name: 'FELIPE CARDOSO DOS ANJOS', email: 'prof.felipecardosodosanjos@gmail.com', phone: nil },
{ first_name: 'FRANCISCO JOSSILEU LIBERATO MELO JUNIOR', email: 'liberatomelo@gmail.com', phone: nil },
{ first_name: 'FRANCISCO KAIRES BRAGA DA COSTA', email: 'professor.kaires@gmail.com', phone: nil },
{ first_name: 'HERNANDO CUBAQUE CACERES', email: 'colbraven@gmail.com', phone: nil },
{ first_name: 'SANDRA MARIA CANDIDO DE SOUZA', email: 'sandra.souza@prof.santanavirtual.com.br', phone: nil},
{ first_name: 'FERNANDO COLLET IBIAPINA', email:'f.collet.ibiapina@gmail.com', phone:nil},
{ first_name: 'FRANCISCO NEUZIMAR DE AZEVEDO ANDRADE', email:'profneuzimar@hotmail.com', phone: nil},
{ first_name: 'JQAO DE DEUS ARAGAO MENDES', email:'', phone: nil},
{ first_name: 'JULIO CESAR MARQUES MONTEIRO', email:'jcmontteirohistory@gmail.com', email: nil},
{ first_name: 'LUIZEDILSON FROTA MLHO', email:'edilsonfrota@hotmail.com', phone: nil},
{ first_name: 'PAULO SAYMON RIBEIRO', email:'paulo.ribeiro@prof.santanavirtual.com.br', phone: nil}

])


# Repopulate the table
SchoolClass.create([
  { grade: "1º ano", level: "Anos Iniciais", quantity: 30, identifier: "A" },
  { grade: "1º ano", level: "Anos Iniciais", quantity: 25, identifier: "B" },
  { grade: "2º ano", level: "Anos Iniciais", quantity: 28, identifier: "A" },
  # Add more records as needed
])

Level.find_or_create_by([{ name: 'Ensino Fundamental Anos Iniciais' }, 
              { name: 'Ensino Fundamental Anos Finais' }, 
              { name: 'Ensino Médio' }
])
 
