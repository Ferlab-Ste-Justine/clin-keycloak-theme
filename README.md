# CLIN Keycloak Theme

### Development Set-up

* Clone the devops repository
```
  git clone git@github.com:Ferlab-Ste-Justine/devops.git
```
* Go into the "Keycloak" folder and initialize the submodules
```
  git submodule init
  git submodule sync
  git submodule update
```
* Generate self signed certificates according to the documentation you can find here:
```
https://github.com/Ferlab-Ste-Justine/devops/tree/dev/certificates#generating-self-signed-certificates
```
* Initialize swarm
```
  docker swarm init --advertise-addr [YOUR_IP_ADDRESS]

  docker node update --label-add app_role=generic $(docker node ls -q)
  docker node update --label-add state_anchor=true $(docker node ls -q)
```
* To launch Keycloak with the theme
```
  ./launchLocalLatest.sh
```
* To stop Keycloak
```
  ./tearDownLocal.sh
```
* N.B.: If the scripts are not executable, run the following:
```
chmod a+x launchLocalLatest.sh tearDownLocal.sh
```