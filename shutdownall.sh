#!/bin/bash

echo "=== Starte Shutdown-Prozess ==="
echo ""

# Minecraft Server stoppen
echo "[1/3] Stoppe Minecraft Server..."
stop-minecraft
if [ $? -eq 0 ]; then
    echo "✓ Minecraft Server erfolgreich gestoppt"
else
    echo "✗ Fehler beim Stoppen des Minecraft Servers"
fi
echo ""

# Vintage Story Server stoppen
echo "[2/3] Stoppe Vintage Story Server..."
stop-vintagestory
if [ $? -eq 0 ]; then
    echo "✓ Vintage Story Server erfolgreich gestoppt"
else
    echo "✗ Fehler beim Stoppen des Vintage Story Servers"
fi
echo ""

# Kurze Wartezeit, damit die Server sauber herunterfahren können
echo "Warte 5 Sekunden, damit alle Server sauber beendet werden..."
sleep 5
echo ""

# System herunterfahren
echo "[3/3] Fahre System herunter..."
echo "System wird in 10 Sekunden heruntergefahren..."
sleep 10
sudo shutdown -h now
