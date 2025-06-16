## Add variables to be set per-user

# Set SSH_AUTH_SOCK only in local sessions, not when SSHing into this machine
if [[ -z "${SSH_CONNECTION}" && -n "${XDG_RUNTIME_DIR}" ]]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# Fix PHP-CS-Fixer version problem
export PHP_CS_FIXER_IGNORE_ENV=1

# Add composer to PATH if not already present
if [[ ":$PATH:" != *":$HOME/.config/composer/vendor/bin:"* ]]; then
  PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

# Add flutter to PATH if not already present
if [[ ":$PATH:" != *":$HOME/Android/flutter/bin:"* ]]; then
  PATH="$HOME/Android/flutter/bin:$PATH"
fi

export PATH

