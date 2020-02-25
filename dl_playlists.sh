#!/usr/bin/env bash
youtube-dl --config-location youtube-dl.conf -o "Playlists/%(playlist_uploader)s - %(playlist)s [%(playlist_id)s]/%(upload_date)s [%(uploader)s - %(uploader_id)s] - %(title)s [%(resolution)s] [%(id)s].%(ext)s" --batch-file "playlists.txt" --download-archive already_dl_playlists_ids.txt
