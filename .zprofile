source ~/cde/scripts/toolkit/cde_shell_toolkit.sh
source ~/.aliases_aws.sh
source ~/.aliases_mac.sh

# Setting PATH for Python 3.7
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting for jq colors
# See https://stedolan.github.io/jq/manual/#Colors
export JQ_COLORS="1;30:0;37:0;37:0;37:0;32:1;37:1;37"

# Setting path for homebrew openssl
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH


# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"

