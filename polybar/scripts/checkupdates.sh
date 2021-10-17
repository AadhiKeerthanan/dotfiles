#!/usr/bin/env zsh

updates=$(checkupdates)

if [ -z "$updates" ]
then
  count='No Updates'
else
  printf '%s\n' "$updates" > /tmp/bspwm-eos-polybar-updates
  count=$(wc -l "/tmp/bspwm-eos-polybar-updates" | awk '{print $1}')
fi

echo "%{T1}%{T-} %{T2}$count%{T-}"

