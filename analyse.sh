storage=($(df -h|awk 'NR==2'|awk '{print $5}'))
storage="${storage::-1}"
if [ $storage -gt 75 ]
then
  echo "You're running low on storage.  You have only $storage% left."
fi
