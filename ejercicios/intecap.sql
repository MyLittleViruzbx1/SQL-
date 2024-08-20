/ Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table usuarios {
  id integer [primary key]
  nombre varchar
  correo varchar
  clave varchar
  created_at timestamp
  permiso_id integer 
  Estado varchar
}

Table usuario_permisos {
  id integer [primary key]
  usuario_id integer
}

Table roles {
  id integer [primary key]
  nombre varchar
  descripcion text [note: 'de que trata']
  usuario_id integer
  estado varchar
  created_at timestamp
}

Table usuario_roles {
  id integer [primary key]
  rol_id integer
  usuario_id integer
}

//Notificaciones push para PWA
Table notificaciones {
  id integer [primary key]
  usuario_id bigint
  icon varchar
  text varchar
  url varchar
  body varchar
}


//Tickets

Table ticket {
  id integer [primary key]
  titulo varchar
  descripcion varchar
  creado varchar
  actualizado varchar
  kind_id varchar
  asignado_usr varchar
  proyecto_id varchar
  prioridad_id int
  usuario_id int
  categoria_id int
  estatus_id int
  comentario_id int
}

Table categorias {
  id integer [primary key]
  nombre varchar
  estado int
  color bigint
}


Table estado_ticket {
  id integer [primary key]
  nombre varchar
  color varchar
}

Table comentario {
  id integer [primary key]
  contenido varchar
  usuario_id int
  ticket_id int

}

Table prioridad {
  id integer [primary key]
  nombre varchar
  color bigint
}

Table asignado {
  id integer [primary key]
  nombre varchar
  ticket_id int
}

Table tipo_ticket {
  id integer [primary key]
  nombre varchar
  ticket_id int
}

Table reportes {
  id integer [primary key]
  nombre varchar
}

Ref: usuarios.id < usuario_permisos.usuario_id

Ref: roles.usuario_id > usuarios.id 

Ref: roles.id < usuario_roles.usuario_id

Ref: usuarios.id < notificaciones.usuario_id

Ref: usuarios.id < ticket.usuario_id

Ref: ticket.categoria_id < categorias.id

Ref: ticket.comentario_id < comentario.id

Ref: ticket.usuario_id < comentario.id

Ref: ticket.estatus_id < estado_ticket.id

Ref: ticket.prioridad_id < prioridad.id

Ref: ticket.asignado_usr < asignado.id

Ref: ticket.kind_id < tipo_ticket.id