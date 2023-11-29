FROM UBUNTU

MAINTAIN Argente <qaaltero1@tip.edu.ph>

#skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# UPDATE PACKAGE
RUN apt update; apt dist-update -y

#INSTALL APACHE (WEB)
RUN apt update; apt dist-upgrade -y

# INTALL DB SERVER
RUN apt install mysql-server -y

# Set Entrypoint
ENTRYPOINT apache 2ctl -D FOREGROUND: mysql -D FOREGROUND
