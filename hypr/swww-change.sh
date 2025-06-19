setsid swww-daemon &

while true; do
    for FILE in ~/Wallpapers/active/*; do
        swww img $FILE
        sleep 30
    done
done
