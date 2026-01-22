# Manual de uso: Eliminar archivos .DS_Store

## ¿Qué hace este script?
Elimina todos los archivos `.DS_Store` (archivos ocultos que genera macOS) de una carpeta y todas sus subcarpetas.

---

## Instalación inicial (solo la primera vez)

1. Guarda el archivo `eliminar_ds_store.sh` en tu **Escritorio** o en alguna carpeta que recuerdes
2. Abre el **Terminal** (Aplicaciones > Utilidades > Terminal)
3. Dale permisos de ejecución escribiendo:
   ```bash
   chmod +x ~/Desktop/eliminar_ds_store.sh
   ```
   (Si lo guardaste en otro lugar, ajusta la ruta)

---

## Cómo usar el script

### **Método 1: Navegar a la carpeta primero (recomendado)**

1. Abre el **Terminal**
2. Escribe `cd ` (cd espacio) pero **NO presiones Enter**
3. Arrastra la carpeta que quieres limpiar desde el Finder al Terminal
4. Presiona **Enter**
5. Escribe la ruta del script:
   ```bash
   ~/Desktop/eliminar_ds_store.sh
   ```
6. Presiona **Enter**
7. Revisa los archivos encontrados
8. Escribe `s` y presiona **Enter** para confirmar

---

### **Método 2: Pasarle la carpeta directamente**

1. Abre el **Terminal**
2. Escribe la ruta del script con un espacio al final:
   ```bash
   ~/Desktop/eliminar_ds_store.sh 
   ```
   (NO presiones Enter todavía)
3. Arrastra la carpeta que quieres limpiar al Terminal
4. Presiona **Enter**
5. Revisa los archivos encontrados
6. Escribe `s` y presiona **Enter** para confirmar

---

## Ejemplo paso a paso

```
1. Terminal: cd [arrastrar carpeta] → Enter
2. Terminal: ~/Desktop/eliminar_ds_store.sh → Enter
3. El script muestra: "Se encontraron 15 archivo(s) .DS_Store"
4. Pregunta: "¿Deseas eliminar estos archivos? (s/n):"
5. Tú escribes: s → Enter
6. Resultado: "✓ Se eliminaron exitosamente 15 archivo(s)"
```

---

## Solución de problemas

**Si dice "Permission denied":**
- Ejecuta de nuevo: `chmod +x ~/Desktop/eliminar_ds_store.sh`

**Si algunos archivos no se eliminan:**
- Intenta con permisos de administrador:
  ```bash
  sudo ~/Desktop/eliminar_ds_store.sh
  ```
  Te pedirá tu contraseña de Mac

**Si el script no se encuentra:**
- Verifica que esté en el Escritorio o ajusta la ruta según donde lo hayas guardado

---

## Notas importantes

- El script te pedirá confirmación antes de eliminar cualquier archivo
- Muestra una lista de todos los archivos que va a eliminar
- Es seguro de usar, solo elimina archivos `.DS_Store`
- Puedes cancelar en cualquier momento presionando `n` cuando pida confirmación

---

## Para compartir con otros desarrolladores

Si necesitas compartir este script con alguien:

1. Envía el archivo `eliminar_ds_store.sh`
2. Comparte este manual
3. Recuérdales que deben darle permisos de ejecución con `chmod +x`