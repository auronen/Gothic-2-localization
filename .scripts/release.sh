#!/usr/bin/env bash

# function for correct encodings
get_encoding() {
    case "$1" in
        # cp1250
        "cs") echo "cp1250" ;;
        "hu") echo "cp1250" ;;
        "pl") echo "cp1250" ;;
        "ro") echo "cp1250" ;;

        # cp1251
        "uk") echo "cp1251" ;;
        "ru" | "ru_russobit" | "ru_snowball") echo "cp1251" ;;

        # cp1252
        "de") echo "cp1252" ;;
        "en") echo "cp1252" ;;
        "es") echo "cp1252" ;;
        "fr") echo "cp1252" ;;
        "it") echo "cp1252" ;;

        # cp1254
        "tr") echo "cp1254" ;;

        # utf8
        "zh_hant" | "zh_Hant") echo "utf8" ;;
        "zh_hans" | "zh_Hans") echo "utf8" ;;
        "cy") echo "utf8" ;;

        # Default case if no match is found
        *) echo "Unknown encoding" ;;
    esac
}

VER=$(date +'%d.%m.%Y')

echo "Substituting Gothic 2 NotR Localizations..."

mkdir -p release/{langs,release}
cp -R .release/* release/release

.scripts/dacode subs -i cp1252 -c "Scripts" -t ".translations" -p -e -o "release/langs"

echo "Compiling Gothic 2 NotR Localizations..."

# Loop over the directories in the specified directory
# and compile the language specific DAT files
for dir in release/langs/*; do
    if [ -d "$dir" ]; then
        LANG=$(basename "$dir")
        ENC=$(get_encoding "$LANG")
        echo "Compiling Gothic 2 NotR: Language $LANG with $ENC"

        .scripts/dacode compile -c "$dir" -i $ENC -g g2a -p gothic,menu
    fi
done

for dir in release/langs/*; do
    if [ -d "$dir" ]; then

        mkdir -p "$dir/_work/Data/Scripts"
        mv "$dir"/_compiled "$dir"/_work/Data/Scripts/_compiled
        mv "$dir"/Content   "$dir"/_work/Data/Scripts/Content
        mv "$dir"/System    "$dir"/_work/Data/Scripts/System

        LANG=$(basename "$dir")
        ENC=$(get_encoding "$LANG")
        echo "Packing mod files for language $LANG"

        .scripts/vdfs -b "$dir" -c "Gothic 2 NotR localization project ($LANG)" -o release/release/Data/modvdf/G2A_$LANG.mod .scripts/g2a.yml

        cp .scripts/GothicLocalized.ini release/release/System/GothicLocalized_$LANG.ini
        sed -i "s/{lang}/$LANG/g; s/{ver}/$VER/g; s/{enc}/$ENC/g" release/release/System/GothicLocalized_$LANG.ini
    fi

done

cd release/release

zip -r "Gothic_2_NotR_Localized.zip" Data System
