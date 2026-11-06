#!/bin/sh
# noto-fonts-cjk: Sans TTC comes from the primary zip (extracted by the
# toolchain); Serif TTC is fetched here with a pinned digest. Both land in
# /usr/share/fonts/noto — fontconfig picks the directory up recursively.
set -e

curl -sfL -o NotoSerifCJK.ttc.zip \
  "https://github.com/notofonts/noto-cjk/releases/download/Serif2.003/01_NotoSerifCJK.ttc.zip"
echo "5009285197f068fe9a58f2cf8d6d312f4bf185887305751aae2608db4e02e48f  NotoSerifCJK.ttc.zip" | sha256sum -c -
unzip -q -o NotoSerifCJK.ttc.zip

mkdir -p "$DESTDIR/usr/share/fonts/noto"
cp -a NotoSansCJK.ttc NotoSerifCJK.ttc "$DESTDIR/usr/share/fonts/noto/"
cp -a LICENSE "$DESTDIR/usr/share/fonts/noto/LICENSE-NotoSansCJK"
