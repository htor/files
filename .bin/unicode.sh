# print out all BMP unicode codepoints+glyph pairs

set -e

if (( $# >= 1 ))
then
    echo "usage: ${0/\.\//}"
    exit 1
fi

for i in {0..65535}
do
    printf "U+%04x \u$(printf %x $i)\n" "$i"
done
