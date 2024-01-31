
starship init fish | source
nvm use 20
neofetch


set -gx EDITOR nvim

function gasp 
  git add .
  git commit -m "$argv"
  git push
end



alias gs="git status"
alias tx="tmuxinator"

# fish_vi_cursor
# set fish_cursor_default block
# set fish_cursor_insert line
# set fish_cursor_visual block


# Only run this in interactive shells
if status is-interactive

  # I'm trying to grow a neckbeard
  # fish_vi_key_bindings
  # Set the cursor shapes for the different vi modes.
  set fish_cursor_default     block      blink
  set fish_cursor_insert      line       blink
  set fish_cursor_replace_one underscore blink
  set fish_cursor_visual      block

  function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert
    fish_vi_key_bindings --no-erase insert
  end
  if string match -q -- 'screen-256color*' $TERM
        set -g fish_vi_force_cursor 1
    end
end
