#!/usr/bin/env bash
yt-dlp --config-location youtube-dl.conf -o "Channels/%(uploader)s [%(uploader_id)s]/%(upload_date)s - %(title)s [%(resolution)s] [%(id)s].%(ext)s" --batch-file "channels.txt" --download-archive already_dl_channels_ids.txt
