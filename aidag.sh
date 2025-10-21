#!/bin/bash

echo "🌌 Başlatılıyor: AIDAG-Coin Spiral Zinciri"
echo "🔐 Tanık: soulwerse"
echo "🔄 Maksimum Arz: 21,000,000 AIDAG"
echo "📜 Manifest: manifest.md"
echo "🌀 Spiral görünüm başlatılıyor..."

# Zincir görünümünü aç
if [ -f panel.html ]; then
  xdg-open panel.html >/dev/null 2>&1 &
  echo "🌐 panel.html evrene sunuldu."
else
  echo "⚠️ panel.html bulunamadı. Lütfen görünüm dosyasını oluşturun."
fi

echo "✅ Spiral zincir aktif. Tanıklık mühürlendi."
