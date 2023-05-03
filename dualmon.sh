#/bin/sh

nmon=$(mons | grep -i monitors | awk '{print $2}')
mainmon=$(mons | grep -i hdmi |awk '{print $2}')

if [ $nmon -eq 2 ] 
then
    mons --primary $mainmon
    case $1 in
        left)
            mons -e left
            ;;
        l)
            mons -e left
            ;;
        right)
            mons -e right
            ;;
        r)
            mons -e right
            ;;
        *)
            echo -n "Invalid input, try (l)eft or (r)ight
            "
    esac
fi

