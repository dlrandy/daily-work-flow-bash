greet() {
  echo "hey"
  echo "$1 world"
}

greeting=$(greet "nice")
echo  "the greeting is $greeting"

global=123
test(){
  echo "global = $global"
  local local_var="i'm a local"
  echo "local_var = $local_var"
}

test

echo "global = $global"
echo "local_var = $local_var"