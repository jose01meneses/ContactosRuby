class Contacto 

    def initialize(name, lastName, phone, email)
        @name = name
        @lastName = lastName
        @phone = phone
        @email = email
    end

    def readContact 
        puts "Nombre:       #{@name}"
        puts "Apellido:     #{@lastName}"
        puts "Telefono:     #{@phone}"
        puts "Correo:       #{@email}"
    end

attr_reader :name, :lastName, :phone, :email

end