# Example schedules
Schedule.create!(
  stage: "Etapa 1",
  grade_application: "Aplicação 1",
  date: "2025-01-10",
  subject: Subject.find_by(name: "Língua Portuguesa")
)


