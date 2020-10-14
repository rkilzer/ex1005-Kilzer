#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(stat -c%s "${f}")"
    echo "Processing $f file..."
    echo "File Size: $SIZE K"
    echo "Word Count: $(wc -w "$f" | cut -d' ' -f1)"
  fi
done

