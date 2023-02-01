function trans
    exec microsoft-edge-stable (printf 'https://translate.google.com/?sl=auto&tl=%s&text=%s&op=translate' $argv)
end
