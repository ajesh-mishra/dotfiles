function fish_prompt
#  tput bold
#  tput setaf 228 
#  tput setb 7 
 
  echo \n
  echo -n "  "
  tput rev; 
  echo -n " "
  echo -n (basename (pwd))
  echo -n "/ "
  tput sgr0;
  set branch (git branch 2> /dev/null | grep "\*" | awk '{ print $2 }')
  
  if test ! -z "$branch"
    echo -n " ("
    echo -n $branch
    echo -n ")"
  end
  

  echo -n ' 💰 '
end
