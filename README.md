# mirrors

Scripts to clone various mirrors for CEDILLE

# Setup

1. Clone this github repo.
2. Run `./setup.sh` be aware that it will build the folder structure at
   `/media/mirror/`. Make sure it has access (you might have to run as sudo).
   
3. Run the scripts for each repo's mirror individually inside the `scripts/`
   folder.
4. Launch the server with `sudo docker-compose up`.
