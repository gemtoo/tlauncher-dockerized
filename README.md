# Dockerized TLauncher GUI
## How to run
1. Install [Docker + Docker Compose for your OS](https://docs.docker.com/engine/install/).
2. Clone the repo and place TLauncher named `launcher.jar` inside repository root. Then create some additional folders.
```
git clone https://github.com/gemtoo/tlauncher-dockerized.git && cd tlauncher-dockerized
mv /path/to/tlauncher.jar launcher.jar
mkdir -p gamedata/{java,tlauncher,minecraft}
```
3. Run TLauncher.
```
docker compose up -d
```
## Notes
This repo was tested and is working with TLauncher Legacy. Might as well work with other custom launchers. Current version will only work if host audio system is PulseAudio, display server is Xorg, graphics are Intel.
