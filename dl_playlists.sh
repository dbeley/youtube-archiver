#!/bin/sh
youtube-dl --config-location youtube-dl.conf -o "Playlists/%(playlist)s - %(playlist_uploader)s [%(playlist_id)s]/%(upload_date)s - %(title)s [%(resolution)s] [%(id)s].%(ext)s" --batch-file "playlists.txt" --download-archive already_dl_playlists_vids.txt
