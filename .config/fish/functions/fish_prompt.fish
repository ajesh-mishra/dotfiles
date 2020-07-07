function fish_greeting
  neofetch
end

function fish_prompt
  echo \n
  echo -n "  "
  printf '%s' (fish_default_mode_prompt)

  tput setab 4; 
  echo -n " "
  echo -n (basename (pwd))
  echo -n "/ "
  tput sgr0;

  printf '%s' (fish_git_prompt)
  echo -n '   '
end

