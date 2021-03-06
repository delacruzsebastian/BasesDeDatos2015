/*TP3 Ferreira*/

1)SELECT usuario.nick, grupo.id 
FROM usuario_grupo 
JOIN usuario ON usuario.ID = usuario_grupo.id_usuario 
JOIN grupo   ON grupo.ID = usuario_grupo.id_grupo;

2)SELECT grupo.descripcion 
FROM grupo
JOIN usuario ON usuario.ultima_conexion = current_date;

3)SELECT COUNT(id_usuario)
FROM usuario_grupo
JOIN usuario ON usuario.tel = '(03) 3659 6909'
WHERE usuario_grupo.id_usuario = usuario.id;

4)SELECT mensaje.mensaje, estado.descripcion
FROM mensaje
JOIN estado ON mensaje.id_estado = estado.id;

5)SELECT mensaje.mensaje, usuario.nick
FROM  mensaje
JOIN usuario ON usuario.tel = '(03) 3659 6909'
WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;

6)SELECT mensaje.mensaje, usuario.nick, estado.descripcion
FROM mensaje
JOIN usuario ON usuario.tel = '(03) 3659 6909'
JOIN estado ON estado.id = mensaje.id
WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;

7)SELECT mensaje.mensaje
FROM  mensaje
JOIN estado ON estado.descripcion = 'Recibido'
JOIN usuario ON mensaje.id_usr_from = usuario.id
WHERE mensaje.id_estado = estado.id AND mensaje.fecha_envio < usuario.ultima_conexion;
