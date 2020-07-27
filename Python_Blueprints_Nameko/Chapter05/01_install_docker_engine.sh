# Change to root for docker installation
su root

# Make sure apt is up-to-date
apt update

# Install dependencies
apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker's GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Verify fingerprint
apt-key fingerprint 0EBFCD88

# Add the docker repository
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Update apt again to pull Docker repository
apt update

# Install Docker Engine
apt install docker-ce docker-ce-cli containerd.io

# Verify installation
docker run hello-world

# Add sbin to path for root to use usermod and other sbin
PATH+=":/usr/sbin"

# Add user to docker group
usermod -aG docker warren

# Exit root
exit

# Reboot to let group change take effect
reboot

# Verify docker can run as unprivileged user
docker run hello-world