. user.sh

export ulpm_prefix
export LD_LIBRARY_PATH=$ulpm_prefix/lib
export PATH=$ulpm_prefix/bin:$PATH
export PKG_CONFIG_PATH=$ulpm_prefix/lib/pkgconfig:$ulpm_prefix/lib64/pkgconfig:$ulpm_prefix/share/pkgconfig
export XDG_DATA_DIRS=$ulpm_prefix/share:$XDG_DATA_DIRS
