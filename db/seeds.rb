# db/seeds.rb

subjects = [
  "Língua Portuguesa",
  "Língua Inglesa",
  "Língua Espanhola",
  "Redação",
  "Natureza e Sociedade",
  "Ciências",
  "Matemática",
  "História",
  "Geografia",
  "Física",
  "Interpretação Textual",
  "Gramática",
  "Arte",
  "Química",
  "Matemática 1",
  "Matemática 2",
  "Biologia",
  "Filosofia",
  "Sociologia"
]

subjects.each do |name|
  Subject.create!(subject_name: name)
end

puts "✅ #{Subject.count} componentes curriculares inseridos com sucesso!"
