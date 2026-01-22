#!/bin/bash

# Script para eliminar todos los archivos .DS_Store de una carpeta y subcarpetas

echo "====================================="
echo "Eliminador de archivos .DS_Store"
echo "====================================="
echo ""

# Verificar si se proporcionó una ruta
if [ -z "$1" ]; then
    echo "Usando la carpeta actual: $(pwd)"
    CARPETA="."
else
    CARPETA="$1"
    echo "Buscando en: $CARPETA"
fi

echo ""
echo "Buscando archivos .DS_Store..."
echo ""

# Contar cuántos archivos hay
TOTAL=$(find "$CARPETA" -name ".DS_Store" -type f 2>/dev/null | wc -l | tr -d ' ')

if [ "$TOTAL" -eq 0 ]; then
    echo "✓ No se encontraron archivos .DS_Store"
    exit 0
fi

echo "Se encontraron $TOTAL archivo(s) .DS_Store"
echo ""
echo "Archivos encontrados:"
find "$CARPETA" -name ".DS_Store" -type f 2>/dev/null
echo ""

# Preguntar confirmación
read -p "¿Deseas eliminar estos archivos? (s/n): " -n 1 -r
echo ""

if [[ $REPLY =~ ^[SsYy]$ ]]; then
    echo ""
    echo "Eliminando archivos..."
    find "$CARPETA" -name ".DS_Store" -type f -delete 2>/dev/null
    
    # Verificar que se eliminaron
    RESTANTES=$(find "$CARPETA" -name ".DS_Store" -type f 2>/dev/null | wc -l | tr -d ' ')
    
    if [ "$RESTANTES" -eq 0 ]; then
        echo "✓ Se eliminaron exitosamente $TOTAL archivo(s)"
    else
        echo "⚠ Algunos archivos no pudieron eliminarse (posible problema de permisos)"
        echo "Archivos restantes: $RESTANTES"
        echo ""
        echo "Intenta ejecutar el script con permisos de administrador:"
        echo "sudo $0 $CARPETA"
    fi
else
    echo "Operación cancelada"
fi

echo ""
echo "====================================="