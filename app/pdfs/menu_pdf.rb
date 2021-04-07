class MenuPdf < Prawn:: Document
    def initialize (menu, plantilla)
      super()
      if plantilla == 0
        plantillaImagenes(menu)
      elsif plantilla == 1
        plantillaTexto(menu)
      elsif plantilla == 2
        plantillaLeyenda(menu)
      else
        plantillaError
      end
    end


    def plantillaImagenes(menu)
      text menu.nombre, align: :center, size: 24, style: :bold
      stroke_line [0,700], [500,700]
      move_down 25
      contador = 1
      menu.platos.each do |p|
        bounding_box([0, cursor], width: 500) do
          text "#{contador}.- " + p.nombre
          x_position = 10
          p.alergenos.each do |a|
            image "app/assets/images/alergenos/#{(a.nombre).downcase}.png",
            width: 30, at: [x_position, cursor]
            x_position += 30
          end
          move_down 10
          contador += 1
        end
        move_down 30
      end
    end

    def plantillaTexto(menu)
      text menu.nombre, align: :center, size: 24, style: :bold
      stroke_line [0,700], [500,700]
      move_down 25
      contador = 1
      menu.platos.each do |p|
          text "#{contador}.- " + p.nombre
          alergenos = "| "
          p.alergenos.each do |a|
            alergenos += a.nombre + " | "
          end
          text alergenos
          contador += 1
          move_down 10
        end
      end

      def plantillaLeyenda(menu)
        text menu.nombre, align: :center, size: 24, style: :bold
        stroke_line [0,700], [500,700]
        move_down 10
        bounding_box([-10, cursor], width: 550) do
          indent (10) do
            pad(20) {
            text "Leyenda", align: :center, size: 18
            text "[1. Altramuz] [2. Apio] [3. Cacahuetes] [4. Crustáceos] [5. Frutos secos] [6. Gluten] [7. Huevos]
            [8. Lácteos] [9. Moluscos] [10. Mostaza] [11. Pescado] [12. Sésamo] [13. Soja] [14. Sulfitos]",
            align: :center
            }
          end
          stroke_bounds
        end
        move_down 30

        contador = 1

        menu.platos.each do |p|
            text "#{contador}.- " + p.nombre
            alergenos = ""
            p.alergenos.each do |a|
              alergenos += " [#{a.id}] "
            end
            indent(20) do
              text alergenos
            end
            contador += 1
            move_down 10
          end
        end



    def plantillaError
      text "Ha ocurrido un error"
    end

end
