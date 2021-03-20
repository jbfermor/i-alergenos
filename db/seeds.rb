# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Role.create(nombre: "admin")
r2 = Role.create(nombre: "usuario")

a1 = Alergeno.create(nombre: "Altramuz", img: "alergenos/altramuz.png")
a2 = Alergeno.create(nombre: "Apio", img: "alergenos/apio.png")
a3 = Alergeno.create(nombre: "Cacahuetes", img: "alergenos/cacahuetes.png")
a4 = Alergeno.create(nombre: "Crustáceos", img: "alergenos/crustaceos.png")
a5 = Alergeno.create(nombre: "Frutos secos", img: "alergenos/frutos_secos.png")
a6 = Alergeno.create(nombre: "Gluten", img: "alergenos/gluten.png")
a7 = Alergeno.create(nombre: "Huevos", img: "alergenos/huevos.png")
a8 = Alergeno.create(nombre: "Lácteos", img: "alergenos/lacteos.png")
a9 = Alergeno.create(nombre: "Moluscos", img: "alergenos/moluscos.png")
a10 = Alergeno.create(nombre: "Mostaza", img: "alergenos/mostaza.png")
a11 = Alergeno.create(nombre: "Pescado", img: "alergenos/pescado.png")
a12 = Alergeno.create(nombre: "Sésamo", img: "alergenos/sesamo.png")
a13 = Alergeno.create(nombre: "Soja", img: "alergenos/soja.png")
a14 = Alergeno.create(nombre: "Sulfitos", img: "alergenos/sulfitos.png")

cl1 = Cliente.create(nombre: "admin", role_id: 1, email: "admin@ejemplo.com",
      password: "password")
cl2 = Cliente.create(nombre: "usuario", email: "usuario@ejemplo.com",
      password: "password")
