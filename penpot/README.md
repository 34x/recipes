# Penpot in a pod (podman / kubernetis)

Working pod (at the time of writing) to run [penpot](https://github.com/penpot/penpot) locally

##  Requirements

 - podman

## Instructions

Run (the first time and it will setup everything needed in a pod named penpot)
```bash
podman kube play penpot-pod.yml
```

 - Open http://localhost:9001
 - Click on login (if not already on login page)
 - Click on create an account
 - You can create own account to be able to login later or click on create demo account to quickly
   explore the system.
 - Play around!

## Stop server

If you need to stop it (it will only stop the server but not remove any data):

```bash
podman pod stop penpot
```

To run it again (with all the data from the previous start preserved)

```bash
podman pod start penpot
```

## Start from scratch

If you want to remove all the users and files and start over with fresh server:

```bash
podman pod stop penpot
podman pod rm penpot
podman kube play penpot-pod.yml
```
