inotifywait -m -e create ~/Downloads --include .*\.torrent | while read line; do
    echo "Created: $line[1]"
    mv ~/Downloads/*.torrent /tmp/@TempDel/
done