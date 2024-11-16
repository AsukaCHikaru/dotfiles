fish_config theme choose "Dracula Official"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH node_modules/.bin /opt/homebrew/bin $PATH

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function __check_nvm --on-variable PWD --description 'Do nvm stuff'
    if test -f .nvmrc
        nvm use
    end
end

__check_nvm
