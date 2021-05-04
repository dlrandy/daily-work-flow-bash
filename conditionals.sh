[[ $USER != 'ss' ]] && echo 'yes' || echo 'no'
if [[ $USER = 'randy' ]]; then
  echo 'true'
elif [[ 1 -eq 1 ]]; then 
  echo '1 == 1'
else 
  echo 'false'
fi

check_status() {
  if [[ -z $2 ]]; then
    echo "\$2 is null"
  fi
  if [[ -ne $2 ]]; then
    echo "\$2 is not exist"
  fi
  local status=$(curl -ILs $1 | head -n 1 | cut -d ' ' -f 2)
  if [[ $status -lt 200 ]] || [[ $status -gt 299 ]]; then
    echo "$1 failed with a $status"
    return 1;
  else 
    echo "$1 succeeded with a $status"
  fi
}

check_status https://example.org
check_status https://example.org/404