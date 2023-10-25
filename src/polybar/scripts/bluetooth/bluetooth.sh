#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo %{F#707880}%{T2}%{T-}%{T-}%{T0} Off%{T-}%{F-}
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo %{F#C5C8C6}%{T2}%{T-}%{T-}%{T0} On%{T-}%{F-}
  fi
  echo %{F#C5C8C6}%{T2}%{T-}%{T-}%{T0} Connected%{T-}%{F-}
fi
