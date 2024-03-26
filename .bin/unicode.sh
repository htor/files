# prints out a list of all BMP unicode glyphs in the BMP code points

set -e

if (( $# >= 1 ))
then
    echo "usage: ${0/\.\//}"
    exit 1
fi

for i in {33..65535}
do
    hex=$(printf %x $i)
    printf "U+%04x \u$hex\n" "$i"
done
