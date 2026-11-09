OUT="$HOME/Desktop/900px"
mkdir -p "$OUT"

for f in "$@"; do
  name=$(basename "$f")
  /usr/bin/sips -Z 900 -s dpiWidth 300 -s dpiHeight 300 "$f" --out "$OUT/$name" >/dev/null
done
