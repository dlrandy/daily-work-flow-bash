dir=${1:-$(pwd)}
find $dir -type f -maxdepth 1 | wc -l

