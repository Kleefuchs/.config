setsid swww-daemon &

while true; do
    for FILE in ~/Wallpapers/active/*; do
        swww img $FILE
        sleep 120
    done
done
