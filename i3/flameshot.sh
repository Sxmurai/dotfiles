key="the auth key for my upload CDN"

# The image host URL
url="https://some-image.host/upload"

tmp_file="/tmp/screenshot.png"

# Actually get the flameshot image
flameshot gui -r > $tmp_file

echo $(file --mime-type -b $tmp_file)

if [[ $(file --mime-type -b $tmp_file) != "image/png" ]]; then
        rm $file
        echo "lmao" 
        notify-send "Flameshot fucked us." -a "Flameshot" && exit 1
fi

image=$(curl -X POST -F "file=@$tmp_file" --header "x-auth:$key" --header "Content-Type:multipart/form-data" $url)

echo $image

echo -n "$image" | xclip -selection clipboard
notify-send "Image URL copied to clipboard" "$image" -a "Flameshot" -i $tmp_file
rm $tmp_file
