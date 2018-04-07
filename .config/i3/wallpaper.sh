FILES1=(~/Bilder/Wallpapers/*)

TIME=15

WALL_LOC="$HOME/.config/i3/wallpaper.jpg"

files=("${FILES1[@]}")
WALLPAPER="aaa"


while true ; do

    WALLPAPER2=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
    # make sure it changes
    while [[ "$WALLPAPER2" == "$WALLPAPER" ]]; do
        WALLPAPER2=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
    done
    WALLPAPER=$WALLPAPER2
    cp "$WALLPAPER" "$WALL_LOC"
    feh --bg-scale "$WALL_LOC"
    sleep $((TIME*60))
done

