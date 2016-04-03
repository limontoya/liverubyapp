
class ContactsPdf < Prawn::Document
    def initialize (contact)
      @contact = contact
      super()
      bodypdf
    end

  def bodypdf
    text "Certificado de contacto"
    pad(8) do
      stroke_horizontal_rule
      indent(20) do
        pad(8) do
          text "Nombre: #{@contact.name}"
          text "Teléfono: #{@contact.phone}"
          text "Email: #{@contact.email}"
          text "Avatar:#{@contact.avatar}"
        end
        indent(50) do
          var = "#{@contact.avatar.file.file}"
          image var, :at => [300,690], :width => 120
        end
      end
      pad(70) do
        stroke_horizontal_rule
        pad(8) do
          text "Realizado por: #{@contact.name}, #{Time.now} "
        end
      end
    end
  end

end