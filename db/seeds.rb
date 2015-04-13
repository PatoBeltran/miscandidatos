# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CandidateArea.create({ name: "Gubernatura" })
CandidateArea.create({ name: "Alcaldía" })
CandidateArea.create({ name: "Diputación" })

PoliticalParty.create({ name: "Partido Acción Nacional", abbreviation: "PAN", color: "#3498db" })
PoliticalParty.create({ name: "Partido Revolucionario Institucional", abbreviation: "PRI", color: "#c0392b" })
PoliticalParty.create({ name: "Partido de la Revolución Democrática", abbreviation: "PRD", color: "#f1c40f" })
PoliticalParty.create({ name: "Partido Verde Ecologista de México", abbreviation: "PVEM", color: "#2ecc71" })
PoliticalParty.create({ name: "Partido del Trabajo", abbreviation: "PT", color: "#d35400" })
PoliticalParty.create({ name: "Movimiento Ciudadano", abbreviation: "Mov. Ciudadano", color: "#2980b9" })
PoliticalParty.create({ name: "Nueva Alianza", abbreviation: "PANAL", color: "#9b59b6" })
PoliticalParty.create({ name: "MORENA", abbreviation: "MORENA", color: "#1abc9c" })
PoliticalParty.create({ name: "Cruzada Ciudadana", abbreviation: "Cruzada", color: "#2c3e50" })
PoliticalParty.create({ name: "Partido Demócrata", abbreviation: "Demócrata", color: "#446CB3" })

GeographicalArea.create({ state: "Nuevo León", city: "Monterrey", color: "#1abc9c" })
GeographicalArea.create({ state: "Nuevo León", city: "San Nicolás", color: "#2c3e50" })
GeographicalArea.create({ state: "Nuevo León", city: "Guadalupe", color: "#c0392b" })
GeographicalArea.create({ state: "Nuevo León", city: "San Pedro", color: "#2ecc71" })
GeographicalArea.create({ state: "Nuevo León", city: "Santa Catarina", color: "#9b59b6" })
GeographicalArea.create({ state: "Nuevo León", city: "Apodaca", color: "#3498db" })
GeographicalArea.create({ state: "Nuevo León", city: "Escobedo", color: "#446CB3" })
GeographicalArea.create({ state: "Nuevo León", city: "Santiago", color: "#f1c40f" })
GeographicalArea.create({ state: "Nuevo León", city: "García", color: "#2980b9" })

StaticPage.create({ name: "legal", content: "legal", title: "legal", modified_by: [] })
StaticPage.create({ name: "finance", content: "finance", title: "finance", modified_by: [] })
StaticPage.create({ name: "rules", content: "rules", title: "rules", modified_by: [] })

User.create({ name: "Patricio Beltrán", email: "pbelsal@gmail.com", password: "123456789", password_confirmation: "123456789", admin: true })
User.create({ name: "Roel Castaño", email: "roelcastanomoreno@gmail.com", password: "123456789", password_confirmation: "123456789", admin: true })
