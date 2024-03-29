# youtube-archiver

Some scripts to archive youtube channels or playlists using yt-dlp.

Fill the `channels.txt` and/or the `playlists.txt` file with the channels/playlists youtube urls you want to archive (the playlists have to be public or unlisted) and run the corresponding script `dl_channels.sh`/`dl_playlists.sh`.

```
./dl_channels.sh
./dl_playlists.sh
```

# Requirements

- yt-dlp

# Systemd-service

Some systemd service files are provided to automatically run the scripts. They are provided in the systemd-service folder.

The service file is the one running the script. The timer file allows the service to be run at a specific time.

The service files assumes the repository is located at `~/Documents/youtube-archiver`. You can change it by modifying the `WorkingDirectory` in the service files.

You can also change the timer files, by default it will run the script every day at 2 am.

```
cp systemd-service/* ~/.config/systemd/user/
systemctl --user daemon-reload

# one time run
systemctl --user start youtube-archiver_channels.service

# activating the timers
systemctl --user enable --now youtube-archiver_channels.timer
systemctl --user enable --now youtube-archiver_playlists.timer

# see the status of either the service or the timer
systemctl --user status youtube-archive_playlists.service
systemctl --user status youtube-archive_playlists.timer
```

## Similar projects

- <https://github.com/dmn001/youtube_channel_archiver>
- <https://gitlab.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts>
