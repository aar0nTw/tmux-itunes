# Tmux iTunes

Tmux plugin that display current track name from iTunes on your status bar.

### Screenshot

![](/screenshots/tmux-itunes.png)

### Usage

Add `#{current_track}` format string to your existing `status-right` tmux
option.

Here's the example in `.tmux.conf`:

    set -g status-right "♫: #{current_track} | %a %h-%d %H:%M "
    
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) 

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'aar0nTw/tmux-itunes'

Hit `prefix + I` to fetch the plugin and source it.

`#{current_track}` interpolation should now work.


