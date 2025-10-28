## Add variables to be set per-user

# FOR NVIDIA ONLY
if [[ "$__NV_PRIME_RENDER_OFFLOAD" == "1" ]]; then
  export __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json
  export __GLX_VENDOR_LIBRARY_NAME=nvidia
fi

# Change go directory location
export GOPATH="$XDG_DATA_HOME/go"

# Prevent wine from setting its applications as defaults globally
export WINEDLLOVERRIDES=winemenubuilder.exe=d

# Set SSH_AUTH_SOCK only in local sessions, not when SSHing into this machine
if [[ -z "${SSH_CONNECTION}" && -n "${XDG_RUNTIME_DIR}" ]]; then
  export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# Add npm global packages to PATH if not already present
if [[ ":$PATH:" != *":$HOME/.config/npm/bin:"* ]]; then
  PATH="$HOME/.config/npm/bin:$PATH"
fi

# Add composer global packages to PATH if not already present
if [[ ":$PATH:" != *":$HOME/.config/composer/vendor/bin:"* ]]; then
  PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

# Add flutter to PATH if not already present
if [[ ":$PATH:" != *":$HOME/Android/flutter/bin:"* ]]; then
  PATH="$HOME/Android/flutter/bin:$PATH"
fi

export PATH

