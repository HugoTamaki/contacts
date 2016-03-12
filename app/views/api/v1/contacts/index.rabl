collection @contacts
attributes :id, :name, :number
child(:carrier) { attributes :name }
child(:user) { attributes :nick }