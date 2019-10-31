for rom in rr dot lineage aosp viper bootleg havoc legion aokp aosip
do
  for variant in user userdebug eng
  do
    add_lunch_combo ${rom}_on7xelte-${variant}
  done
done
