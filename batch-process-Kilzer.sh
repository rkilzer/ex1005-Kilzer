#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    FILENAME="$(basename "${f}")"
    FILESIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $FILENAME file..."
    echo "File Size: $FILESIZE"
    echo "Word Count: $(wc -w "$f" | cut -d' ' -f1)"
  fi
done

