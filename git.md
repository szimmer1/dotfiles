# Set up git on a new machine
Shahar Zimmerman, Last updated 1/20/2017

#### Install
    
    sudo apt-get install git

#### Configure Github

Add ssh keypair. Name it `github_id_rsa`.

    ssh-keygen -t rsa -b 4096 -C "${YOUR_EMAIL}"

Add the keypair to the system config:

    ssh-add ~/.ssh/github_id_rsa

Copy and paste the public key `github_id_rsa.pub` to Github webpage. See [https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/).

Now you will be able to do remote commands with Github using ssh urls i.e. `git@github.com:<user>/<repo>.git`
