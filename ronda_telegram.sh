#!/bin/bash
TOKEN="8894575748:AAE_BzTYwkVtORPO2fB9y3GcQxw6uX7KLts"
CHAT_ID="6947544783"
PESAN="${1:-Patroli rutin - Aman terkendali}"
JAM=$(date +"%H:%M %d/%m")
LAPORAN="[$JAM] $PESAN"
echo "$LAPORAN" >> buku_ronda.txt
curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$LAPORAN"
echo ""
echo "Terkirim: $LAPORAN"
