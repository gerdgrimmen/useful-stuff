# stackoverflow
for i in *.avi; do ffmpeg -i "$i" "${i%.*}.mp4"; done

# stackoverflow
ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac

# for me not usable in fish -_- but worked in bash
for i in *.webm; do ffmpeg -i "$i" -vn "${i%.*}.mp3"; done


