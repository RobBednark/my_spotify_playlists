#!/bin/bash

set -xv

cd spotify_playlists
# Note that the number includes the header line, so you need to subtract 1 from the number to get the actual number of tracks
# Only replace the first space on each line (in case there are spaces in the filename)
wc -l * | \
    sed -e 's/^ *//' | \
    sed -e 's/ /,/1' \
    > ../number_of_tracks_per_playlist.csv
