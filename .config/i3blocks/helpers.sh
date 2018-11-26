#!/bin/bash

escape_json() {
    echo $* | sed 's/"/\\"/g'
}

output() {
    echo '{"full_text":"'$(escape_json $1)'"}'
}

colored() {
    echo '{"full_text":"'$(escape_json $2)'","color":"'$1'"}'
}

pango_color() {
    echo '<span foreground="'$1'">'$2'</span>'
}

pango_extra() {
    echo '<span foreground="'$1'" background="'$2'">'$3'</span>'
}
