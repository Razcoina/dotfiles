## Add variables to be set per-user

# Set SSH_AUTH_SOCK only in local sessions, not when SSHing into this machine
if [[ -z "${SSH_CONNECTION}" && -n "${XDG_RUNTIME_DIR}" ]]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# Add composer and flutter binary locations to PATH
export PATH="$HOME/.config/composer/vendor/bin:$HOME/Android/flutter/bin:$PATH"
