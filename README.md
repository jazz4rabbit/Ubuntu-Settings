# UbuntuSettings
A script to set environment in on Ubuntu 16.04.


# alias vi to vim
alias vi="vim"

# JAVA Development Kit
export JDK_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

# JAVA Development Kit
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

# CUDA Tool Kit
export LD_LIBRARY_PATH="/usr/local/cuda/lib64"
export CUDA_HOME="/usr/local/cuda"

# PATH
export PATH="$PATH:$CUDA_HOME/bin:$JDK_HOME/bin:$JAVA_HOME/bin:~/Library/android-studio/bin/"

source ~/.bash_profile
