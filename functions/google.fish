function google
    exec microsoft-edge-stable '$(printf "google.com/search?q=%s" $argv)'
end
