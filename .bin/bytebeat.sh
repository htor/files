#!/bin/bash
# output a raw 8bit 8khz pcm stream from a c program
# can be used for audio playback with aplay/sox

set -e

if test $# != 1
then
    echo "usage: bytebeat [c program using t]"
    exit 1
fi

echo "main(t){for(t=0;;t++)putchar($1);}" | gcc -o /tmp/a.out -w -x c -
exec /tmp/a.out
