apt update
apt upgrade 
apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
apt install curl
   curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
   curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
cat /etc/debian_version 
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable"
apt update
apt install docker-ce docker-ce-cli containerd.io
docker --version
systemctl enable docker
docker run httpd
docker ps
docker ps -a
docker exec -it 46a5a4d31f78 bash
docker start 46a5a4d31f78b48331e1b2d2bc7451461353defdfbfda4f343093d7c263a8513
docker ps
docker stop 46a5a4d31f78
docker run -d -p 90:80 --name apache_container httpd
docker ps
- docker exec -it 46a5a4d31f78 bash
docker exec -it 46a5a4d31f78 bash
docker start 46a5a4d31f78b48331e1b2d2bc7451461353defdfbfda4f343093d7c263a8513
docker exec -it 46a5a4d31f78b48331e1b2d2bc7451461353defdfbfda4f343093d7c263a8513 bash
sudo usermod -aG docker $abdelkader
 usermod -aG docker $abdelkader
sudo usermod -aG docker $abdelkader
su -
usermod -aG docker abdelkader
adduser abdelkader
usermod -aG docker abdelkader
su - abdelkader
docker
docker -v
docker volume create portainer data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
sudo netstat -tuln | grep -E "8000|9443"
netstat -tuln | grep -E "8000|9443"
lsof -i :8000
lsof -i :9443
docker ps -a
docker volume ls
docker volume d
docker volume inspect
docker volume inspect d
docker logs portainer
docker restart portainer
docker stop portainer
docker start portainer
docker ps -a
ip a
docker logs  myhttpd
clear
docker ps a
docker ps -a
clear
docker volume ls
docker volume create mon_volume
docker volume ls
docker run -d -v mon_volume:/data --name mon_conteneur debian
docker volume inspect mon_volume
docker volume rm  portainer_data
docker stop 3718fea32f4343e48cb0b475e8de59fc853b3036f277b1a08f132bc34a9017c6
docker rm 3718fea32f4343e48cb0b475e8de59fc853b3036f277b1a08f132bc34a9017c6
docker volume rm portainer_data
docker ps
docker ps -a
docker stop myhttpd
docker rm myhttpd
docker run -d -p 93:80 --name myhttpd httpd
docker logs myhttpd
sudo nano /etc/apache2/apache2.conf
nano /etc/apache2/apache2.conf
clear
docker volume ls
docker volume inspect mon_volume
docker run -d -v mon_volume:/data --name mon_conteneur debian
docker cp monfichier.txt mon_conteneur:/data/
docker stop mon_conteneur
docker rm mon_conteneur
docker run -d -v mon_volume:/data --name mon_conteneur debian
docker cp monfichier.txt mon_conteneur:/data/
docker exec mon_conteneur ls /data
ls /root/monfichier.txt
docker ps -a
clear
docker rm -f $(docker ps -a -q)
# Créer un volume pour Portainer
docker volume create portainer_data
# Lancer le container Portainer
docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
docker volume create shared_volume
docker run -d --name container1 -v shared_volume:/shared_folder debian
docker run -d --name container2 -v shared_volume:/shared_folder debian
docker exec -it container1 bash
docker start container1
docker start container2
docker exec -it container1 bash
docker ps -a
docker volume rm shared_volume
docker stop container1 container2
docker rm container1 container2
docker volume rm shared_volume
docker run -d --name container1 -v shared_volume:/shared_folder nginx
docker volume create shared_volume
docker run -d --name container1 -v shared_volume:/shared_folder nginx
docker rm -f container1
docker run -d --name container1 -v shared_volume:/shared_folder nginx
docker run -d --name container2 -v shared_volume:/shared_folder nginx
docker exec -it container1 bash
                                                                                                                                                                                                                                                              docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
docker ps -a
docker ps -a
docker exec -ti 68a51184dc7c  /bin/bash
docker exec -it jenkins /bin/bash
 docker exec -ti 68a51184dc7c  /bin/bash
docker exec -it jenkins /bin/bash
docker exec -it jenkins /bin/bash
 docker exec -ti 68a51184dc7c  /bin/bash
root@debian:~# docker exec -ti 68a51184dc7c /bin/bash
jenkins@68a51184dc7c:/$ cd /var/jenkins_home/users
jenkins@68a51184dc7c:~/users$ cd Abdelkader_3501633635127540672
jenkins@68a51184dc7c:~/users/Abdelkader_3501633635127540672$ ls
jenkins@68a51184dc7c:~/users/Abdelkader_3501633635127540672$ nano config.xml
clear
docker exec -ti 68a51184dc7c /bin/bash
apt-get update && apt-get install -y nano
root@debian:~# docker exec -ti 68a51184dc7c /bin/bash
root@debian:~# docker exec -ti 68a51184dc7c /bin/bash
docker exec -ti 68a51184dc7c /bin/bash
clear
	docker pull jenkins/jenkins:lts
	docker run -d -p 8080:8080 -p 50000:50000 --name my-jenkins jenkins/jenkins:lts
docker volume inspect my-jenkins
	docker exec -it my-jenkins bash
cat /etc/passwd
su - abdelkader
docker - ps
docker  -ps
docker images
apt install curl
mkdir httpd-docker
cd httpd-docker
nano Dockerfile
nano Dockerfile
docker build -t image-httpd .
nano Dockerfile
nano Dockerfile
docker build -t image-httpd .
nano Dockerfile
docker build -t image-httpd .
ls
nano Dockerfile
docker build -t image-httpd .
nano html
docker build -t image-httpd .
nano Dockerfile
docker build -t image-httpd .
ls
mv m,odifier\ le\ fichier\ html index.html
rm -r html
nano index.html
docker build -t image-httpd .
docker image inspect httpd
docker image inspect httpd:latest
docker image inspect image-httpd:latest
docker run -d image-httpd
docker exec -ti 491b8cc323d98a40abac08a797f7095e06e8adbe1008d0a5928b55a0e66e72b2 bash
nano index.html 
nano dockerfile
cd
cat Dockerfile
docker exec -it
less Dockerfile
ip a
cd /
ls
cd etc/
ls
cd
ls
cd Dockerfile 
nano Dockerfile 
nano Dockerfile 
cd httpd-docker/
ls
nano Dockerfile 
docker build -t my-httpd-image .
nano Dockerfile 
docker images
docker run -d -p 70:80 my-httpd-image:latest
nano Dockerfile
docker run -d -p 70:80 my-httpd-image:latest
nano Dockerfile
nano Dockerfile
docker build -t my-httpd-image:latest .
docker run -d -p 70:80 my-httpd-image:latest
clear
docker ps
docker images
cat Dockerfile
docker build -t mon-nginx-avec-nano .
docker run -d -p 80:80 mon-nginx-avec-nano
docker ps
docker ps -a
docker ps -a
docker ps -a
clear
docker ps -a
git clone https://github.com/adminDevOs/MON_SITE.git
cd MON_SITE
cd
ls
rm -r MON_SITE 
cd mon_site_personnalisable
nano index.html
git init
git add .
git commit -m "Initial commit: ajout de la structure de base du site web"
git config --global user.name adminDevOs
git config --global user.email daka_k@yahoo.fr
git branch -m master
nano Dockerfile
nano Dockerfile
docker build -t monsite-personnalisable:v1 
nano Dockerfile
docker build -t Mon Site Personnalisable":v1 
docker run -d -p 8080:7777 monsite-personnalisable:v1
docker build -t monsite-personnalisable:v1 .
docker run -d -p 8080:7777 monsite-personnalisable:v1
docker ps
docker ps
docker ps -a
docker logs 7b666f8c15044b38129aa798399379ae4e089ca8aaef4a4161ec0712748f7c2f
nano entrypoint.sh
docker build -t monsite-personnalisable:v1 .
ocker stop 7b666f8c15044b38129aa798399379ae4e089ca8aaef4a4161ec0712748f7c2f
docker stop 7b666f8c15044b38129aa798399379ae4e089ca8aaef4a4161ec0712748f7c2f

docker run -d -p 8080:7777 monsite-personnalisable:v1
ls
git status
git add
git commit 
git commit 
git commit 
git commit 
git add"
git add
git commit
git add entrypoint.sh
git status
git add
git commit
git commit
git commit
git push
git push https://github.com/adminDevOs/MON_SITE.git
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
git config --global credential.helper store
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git master
 git remote
 git remote add origin  https://github.com/adminDevOs/MON_SITE.git
 git remote
 git push --set-upstream https://github.com/adminDevOs/MON_SITE.git
clear
 git remote add origin  https://github.com/adminDevOs/MON_SITE.git
git add 
git commit -m "Initial commit: ajout de la structure de base du site web"
git remote add origin https://github.com/adminDevOs/MON_SITE.git
git push -u origin master
clear
cd
mkdir mon-site-docker
cd mon-site-docker
touch Dockerfile index.html style.css header.html footer.html section.html
nano index.html
nano style.css
nano script.js
nano Dockerfile
docker build -t mon-site-web .
docker run -d -p 300:80 mon-site-web
nano index.html
nano index.html
ls
cd mon-site-docker/
ls
nano Dockerfile 
nano nginx.conf 
nano nginx.conf 
docker build -t mon-site .
nano Dockerfile
nano Dockerfile
ls
cd Dockerfile 
ls
ls -l
docker build -t my-nginx-image .
docker run --rm -p 300:300 my-nginx-image
clear
docker build -t my-nginx-image .
docker run --rm -p 300:300 my-nginx-image
clear
nano Dockerfile 
docker build -t my-alpine-image .
docker run --rm my-alpine-image
clear
nano Dockerfile 
docker build -t my-alpine-image .
docker run --rm my-alpine-image
nano Dockerfile 
nano Dockerfile 
docker build -t my-alpine-echo .
docker run --rm my-alpine-echo
docker run -it alpine
docker run --rm alpine ping -c 4 8.8.8.8
docker run --rm my-alpine-echo
docker run -it alpine
docker container ls -a
docker images ls
Docker images
docker run -it alpine
Docker ps ls
docker ps ls
docker  ls
docker  ps
docker run --rm alpine ping  8.8.8.8
clear
 docker run -d -p 80:77 ngnix
docker run -d -p 80:77 nginx
docker stop 4ca159c110ca
docker run -d -p 80:30 nginx
docker ps
docker run -d -p 80:30 nginx
 lsof -i :80
docker ps
docker stop c709e1366f16
docker rm c709e1366f16
docker run -d -p 79:80 nginx
docker ps
docker inspect c709e1366f16
docker ps
docker inspect 1d519e14a6ca  
docker ps
docker ps
docker ps -a
mkdir pong-server
cd pong-server
nano app.py
nano Dockerfile
docker build -t pong:v1.0 .
docker run -d -p 8081:80 --name pong-container pong:v1.0
curl http://localhost:8081/ping
docker ps
docker stop pong-container
docker rm pong-container
docker image prune
docker logs pong-container
docker start pong-container
docker ps -a
pong-container
docker run -d -p 8081:80 --name pong-container pong:v1.0
journalctl -u docker.service
docker images
ls
nano Dockerfile 
docker build -t pong:v1.0 .
docker run -d -p 8081:80 --name pong-container pong:v1.0
curl http://localhost:8081/ping
docker ps
docker ps
curl http://localhost:8081/ping
ls
ls app.py 
cat app.py 
clear
curl http://localhost:8081/ping
nano Dockerfile 
nano Dockerfile 
tree
rm -r mon_projet_docker
tree
cd ~/mediawiki-docker
docker-compose up -d
sudo systemctl restart apache2
cd
clear
tree
rm -r Dockerfile.ansible
treee
tree
rm -r hosts
tree
ls
cd mediawiki-docker/
nano docker-compose.yml 
docker-compose up -d
docker ps
docker ps
cd
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            tree
docker run --rm -v /root/ansible-playbooks:/etc/ansible/playbooks ansible-image /etc/ansible/playbooks/playbooks/playbook.yml
rm /root/ansible-playbooks/playbooks/playbook.yml
nano /root/ansible-playbooks/playbooks/playbook.yml
cat /root/ansible-playbooks/playbooks/playbook.yml
docker run --rm -v /root/ansible-playbooks:/etc/ansible/playbooks ansible-image ansible-playbook /etc/ansible/playbooks/playbooks/playbook.yml
docker run --rm -v /root/ansible-playbooks:/etc/ansible/playbooks ansible-image ls /etc/ansible/playbooks/playbooks
tree
docker run --rm -v /root/ansible-playbooks:/etc/ansible/playbooks ansible-image ls /etc/ansible/playbooks/playbooks
cd ansible-docker/
docker run --rm -v /root/ansible-playbooks:/etc/ansible/playbooks ansible-image ls /etc/ansible/playbooks/playbooks
cd
docker run --rm -v /root/ansible-playbooks:/etc/ansible/playbooks ansible-image /bin/bash -c "ls /etc/ansible/playbooks/playbooks"
docker run -it --rm -v /root/ansible-playbooks:/etc/ansible/playbooks ansible-image /bin/bash
rm -rf ~/ansible-docker
rm -rf ~/ansible-playbooks
docker rmi ansible-image
tree
mkdir -p ~/ansible-docker/playbooks
tree
cd ansible-docker/
nano Dockerfile
cd playbooks/
nano playbook.yml
cd ..
docker build -t ansible-image .
cd
tree
docker run -it --rm -v ~/ansible-docker/playbooks:/etc/ansible/playbooks ansible-image /bin/bash
docker images
cd ansible-docker/
nano Dockerfile 
docker build -t ansible-image .
docker images
docker run -it --rm -v ~/ansible-docker/playbooks:/etc/ansible/playbooks ansible-image /bin/bash
ls -l ~/ansible-docker/playbooks
docker run -it --rm -v ~/ansible-docker/playbooks:/etc/ansible/playbooks ansible-image /bin/bash
/etc/ansible/playbooks# ansible-playbook /etc/ansible/playbooks/playbook.yml
nano ~/ansible-docker/playbooks/playbook.yml
docker build -t ansible-image .
docker run -it --rm -v ~/ansible-docker/playbooks:/etc/ansible/playbooks ansible-image /bin/bash
