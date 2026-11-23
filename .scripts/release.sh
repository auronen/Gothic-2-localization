#!/usr/bin/env bash
set -euo pipefail

# Run dacode and fail the script if it hits a fatal error
# (dacode exits 0 even when it hits errors, because some of them are okay;
# and I am lazy... so the output must be checked;
# only CSV errors are fatal - other [ERROR]s are passable)
run_dacode() {
    local out rc=0
    out=$(.scripts/dacode "$@" 2>&1) || rc=$?
    printf '%s\n' "$out"
    if [ "$rc" -ne 0 ]; then
        echo "::error::dacode failed with exit code $rc" >&2
        exit "$rc"
    fi
    if printf '%s\n' "$out" | grep -q '^[[:space:]]*\[ERROR\] CSV'; then
        echo "::error::dacode reported CSV errors, aborting" >&2
        exit 1
    fi
}

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

run_dacode subs -i cp1252 -c "Scripts" -t ".translations" -p -e -d "release/langs"

echo "Compiling Gothic 2 NotR Localizations..."

# Loop over the directories in the specified directory
# and compile the language specific DAT files
for dir in release/langs/*; do
    if [ -d "$dir" ]; then
        LANG=$(basename "$dir")
        if [ "$LANG" = "cy" ]; then
            echo "Skipping Gothic 2 NotR: Language $LANG (hardcoded skip)"
            continue
        fi
        ENC=$(get_encoding "$LANG")
        echo "Compiling Gothic 2 NotR: Language $LANG with $ENC"

        run_dacode compile -c "$dir" -i $ENC -g g2a -p gothic,menu --no-control-flow-checks --no-type-checking
    fi
done

for dir in release/langs/*; do
    if [ -d "$dir" ]; then
        LANG=$(basename "$dir")
        if [ "$LANG" = "cy" ]; then
            echo "Skipping mod files for language $LANG (hardcoded skip)"
            continue
        fi

        mkdir -p "$dir/_work/Data/Scripts"
        mv "$dir"/_compiled "$dir"/_work/Data/Scripts/_compiled
        mv "$dir"/Content   "$dir"/_work/Data/Scripts/Content
        mv "$dir"/System    "$dir"/_work/Data/Scripts/System

        ENC=$(get_encoding "$LANG")
        echo "Packing mod files for language $LANG"

        .scripts/vdfs -b "$dir" -c "Gothic 2 NotR localization project ($LANG)" -d release/release/Data/modvdf/G2A_$LANG.mod .scripts/g2a.yml

        cp .scripts/GothicLocalized.ini release/release/System/GothicLocalized_$LANG.ini
        sed -i "s/{lang}/$LANG/g; s/{ver}/$VER/g; s/{enc}/$ENC/g" release/release/System/GothicLocalized_$LANG.ini
    fi

done

cd release/release

zip -r "Gothic_2_NotR_Localized.zip" Data System
