# kuebernetesjourney
This repo serves to document my learning of Docker/Kuebernetes.
Also in hopes that anyone who comes behind me can follow my instructions and easily learn as well.

"When you learn,teach, when you get,give" - Maya Angelou

docker cheat sheet
    "docker info"

1. Install Docker
    - I have did the pleasure of putting the install in a script: scripts/installdocker.sh
2. Docker Automatically creates a group make sure to add user to the docker group:
sudo usermod -a -G docker cloud_user

3. Select Storage Driver
    - overlay2 - if there's a lot of reading 
    - devicemapper - if there will be a lot of writing
    Change by editing: vim /etc/docker/daemon.json *must be valid json*
        {
            "storage-driver": "device-mapper"
        }
    You just made a change to an "important" file
    - restart : sudo systemctl daemon-reload
    - restart : sudo sysmtectl restart docker
 