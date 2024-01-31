function fconfig --wraps='nvim ~/.config/fish/config.fish && source ~/.config/fish/config.fish' --description 'alias fconfig=nvim ~/.config/fish/config.fish && source ~/.config/fish/config.fish'
  nvim ~/.config/fish/config.fish && source ~/.config/fish/config.fish $argv; 
end
