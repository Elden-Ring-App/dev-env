# dev-env
Runner of all services. 

The data from the game came from this dataset: [Ultimate Elden Ring with Shadow of The Erdtree DLC](https://www.kaggle.com/datasets/pedroaltobelli/ultimate-elden-ring-with-shadow-of-the-erdtree-dlc)

## How to Run:

### With startup.sh (macOS and Linux):

1. Go to your terminal
2. Enter the dev-env folder
3. Run `git submodule update --init --recursive`
4. Run  `chmod +x startup.sh`
5. Then run this one `./startup.sh`
6. Should be working!

#### NOTE

* The `./cleanup.sh` will do the same but without launching the app, will only clean docker, will also need the to run `chmod +x cleanup.sh` before you use it

### With docker compose (Should work with every system)

1. Go to your terminal
2. Enter the dev-env folder
3. **(Only needed 1º time  on the device)** Run `git submodule update --init --recursive`
4. Run `git submodule update --remote --merge`
5. **(Recommended)** Run `docker volume prune -f`
6. **(Recommended)** Run `docker system prune -f`
7. **(Recommended)** Run `docker image prune -f`
8. **(Optional)** Run `docker compose down` to bring down all docker compose services running, don't do this if you have any that you don't want to stop. 
10. Run `compose up --build`
11. Should be working!
