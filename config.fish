if status is-interactive
 # Commands to run in interactive sessions can go here
end

# ==========================================
# CONFIGURAÇÃO DE CAMINHOS (PATH)
# ==========================================

fish_add_path /Users/danielmanoel/development/flutter/bin
fish_add_path /Users/danielmanoel/Library/Android/sdk/platform-tools
fish_add_path /Users/danielmanoel/Library/Android/sdk/emulator
fish_add_path /Users/danielmanoel/Library/Android/sdk/platform-tools/
fish_add_path /Users/danielmanoel/Library/Android/sdk/tools
fish_add_path /Applications/Windsurf.app/Contents/MacOS


# ==========================================
# CONFIGURAÇÕES DO SPACEFISH
# ==========================================

set SPACEFISH_PROMPT_ADD_NEWLINE false

# ==========================================
# INICIALIZAÇÃO DE FERRAMENTAS
# ==========================================

starship init fish | source
zoxide init fish | source
fzf --fish | source
set -g fish_greeting

# ==========================================
# ALIASES
# ==========================================

alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias l="ls -la"
alias la="eza -la --icons --group-directories-first"
alias lt="eza -T --icons --group-directories-first"
alias cd="z"
alias cat="bat --paging=never --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
alias codew="windsurf ."

# ==========================================
# CONFIGURAÇÕES DO FZF
# ==========================================

export FZF_CTRL_T_OPTS="
--style full
--walker-skip .git,node_modules,target
--preview 'bat -n --color=always {}'
--bind 'ctrl-/:change-preview-window(down|hidden|)'"
