require_relative 'Contacto'

contactList = []
option = 0
while option != 4

    puts "\e[H\e[2J" #Limpiar pantalla  

    puts "===================================="
    puts "Opciones"
    puts "1. Mostrar lista de contactos"
    puts "2. Agregar nuevo contacto"
    puts "3. Eliminar contacto"
    puts "4. Salir"
    puts "===================================="

    option = gets.to_i 
    
    case option
    when 1
        puts "\e[H\e[2J"

        for contact in contactList
            puts "-------------------------------------"
            contact.readContact
        end

        puts "Presione ENTER para continuar!"
        gets
    when 2
        puts "\e[H\e[2J"

        puts "Ingrese el nombre del contacto"
        name = gets
        puts "Ingrese el apellido del contacto"
        lastName = gets
        puts "Ingrese el telefono del contacto"
        phone = gets
        puts "Ingrese el correo del contacto"
        email = gets
        newContact = Contacto.new(name, lastName, phone, email)
        contactList.push(newContact)
        puts "¡Contacto guardado. Presione ENTER para continuar!"
        gets
    when 3
        puts "\e[H\e[2J"

        index = 0
        for contact in contactList
            puts "-------------------------------------"
            puts "#{index+1}."
            contact.readContact
            index = index + 1
        end
        puts "Digite el número de contacto a eliminar"
        idToDelete = gets
        resultDelete = contactList.delete_at(idToDelete.to_i - 1)
        if resultDelete == nil
            puts "El contacto digitado no existe. Presione ENTER para continuar!"
            gets
        else
            puts "Contacto eliminado. Presione ENTER para continuar!"
            gets
        end
        
    when 4
        puts "\e[H\e[2J"

        puts "ADIOS"

    else
        puts "Opción incorrecta. Presione ENTER para continuar"
        gets
    end  
end


