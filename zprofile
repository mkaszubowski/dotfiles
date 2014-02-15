emulate sh -c 'source ~/.profile'

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      emulate sh -c "source $i"
    fi
  done
  unset i
fi
