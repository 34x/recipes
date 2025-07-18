# Run testcontainers inside distrobox

```bash
# first build the image
podman build -f console.containerfile --tag test-containers-in-container

# create distrobox container
distrobox create --name testcontainers --image test-containers-in-container

# ensure podman.socket service is running
# it will be used from inside the distrobox
systemctl --user start podman

# enter distrobox container
distrobox enter testcontainers

# inside distrobox in the same folder as this project
# it will setup environment variables
source ./distrobox.rc

# then usual npm stuff

npm install
npm test
```


The test example is from testcontainers documentation https://testcontainers.com/guides/getting-started-with-testcontainers-for-nodejs/
