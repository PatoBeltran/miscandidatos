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

PoliticalParty.create({ name: "Partido Acción Nacional", abbreviation: "PAN" })
PoliticalParty.create({ name: "Partido Revolucionario Institucional", abbreviation: "PRI" })
PoliticalParty.create({ name: "Partido de la Revolución Democrática", abbreviation: "PRD" })
PoliticalParty.create({ name: "Partido Verde Ecologista de México", abbreviation: "PVEM" })
PoliticalParty.create({ name: "Partido del Trabajo", abbreviation: "PT" })
PoliticalParty.create({ name: "Movimiento Ciudadano", abbreviation: "Mov. Ciudadano" })
PoliticalParty.create({ name: "Nueva Alianza", abbreviation: "PANAL" })
PoliticalParty.create({ name: "MORENA", abbreviation: "MORENA" })
PoliticalParty.create({ name: "Cruzada Ciudadana", abbreviation: "Cruzada" })
PoliticalParty.create({ name: "Partido Demócrata", abbreviation: "Demócrata" })

GeographicalArea.create({ state: "Nuevo León", city: "Monterrey" })
GeographicalArea.create({ state: "Nuevo León", city: "San Nicolás" })
GeographicalArea.create({ state: "Nuevo León", city: "Guadalupe" })
GeographicalArea.create({ state: "Nuevo León", city: "San Pedro" })
GeographicalArea.create({ state: "Nuevo León", city: "Santa Catarina" })
GeographicalArea.create({ state: "Nuevo León", city: "Apodaca" })
GeographicalArea.create({ state: "Nuevo León", city: "Escobedo" })
GeographicalArea.create({ state: "Nuevo León", city: "Santiago" })
GeographicalArea.create({ state: "Nuevo León", city: "García" })

StaticPage.create({ name: "legal", content: "" })
StaticPage.create({ name: "finance", content: "" })
StaticPage.create({ name: "rules", content: "" })

User.create({ name: "Patricio Beltrán", email: "pbelsal@gmail.com", password: "123456789", password_confirmation: "123456789" })
User.create({ name: "Roel Castaño", email: "roelcastanomoreno@gmail.com", password: "123456789", password_confirmation: "123456789" })
