read -p "Enter URL of youtube or youtube music playlist: " url
read -p "Enter the name of target folder and files: " target_name
read -p "Enter sleep time (Recommend either 5 or 10): " sleep_time
read -p "Pls Enter the format: " format
yt-dlp $url -t $format -t sleep $sleep_time --download-archive "$target_name.archive" --audio-quality 0 -o "$target_name/%(title)s.%(ext)s" --cookies cookies-youtube-com.txt --add-metadata --compat-options embed-metadata -f "bv+ba/b"
