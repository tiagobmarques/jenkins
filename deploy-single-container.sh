sudo docker stop -t 0 $(sudo docker ps -q)
sudo docker container prune --force
sudo docker rmi tiagobm564/devops-jenkins
                        