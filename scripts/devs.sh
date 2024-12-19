SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
cd $SCRIPT_DIR
cd ..
sh scripts/copy_ssh.sh
docker-compose up -d --build
docker exec -it $(basename "$PWD")_station_1 tmux
