collection @contacts, root: "contacts", object_root: false
attributes :id, :name, :number
child(:carrier) { attributes :name }
child(:user) { attributes :nick }