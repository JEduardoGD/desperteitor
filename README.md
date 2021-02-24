# desperteitor
comandos utiles

Iniciar, detener y saber el estatus del incrementador de volumen:
```bash
sudo service increase start
sudo service increase stop
sudo service increase status
```

Iniciar, detener y saber el estatus del reproductor de musica
```bash
sudo service play start
sudo service play stop
sudo service play status
```

Incrementar el volumen al 90%
```bash
/usr/bin/amixer -c 0 sset Headphone,0 90% > /dev/null
```

Crear servicios linux con enlace simbolico
```bash
sudo ln -s /home/pi/desperteitor/poweroff.service /etc/systemd/system/poweroff.service
sudo systemctl enable poweroff
```
