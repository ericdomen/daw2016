#Autor: Eric Domenzain Morales
require 'sqlite3'
require 'awesome_print'

#Creamos un objeto de base de datos con su nombre y extension
db = SQLite3::Database.new('users.sqlite3')

#Ejecutamos un script sql en la base de datos
db.execute <<-SQL
CREATE TABLE IF  NOT EXISTS users(name varchar(255), email varchar(255), birth_year int)
SQL

#Ejectuamos una insercion en la tabla usuario
db.execute 'INSERT INTO users (name, email, birth_year) VALUES (?,?,?)', ['Eric', 'ericdomenzain@gmail.com', 1994]

#Asignamos a la variable usuarios todos los usuarios de la consulta
users = db.execute 'SELECT * FROM users'

#imprimimos la variable
ap users
