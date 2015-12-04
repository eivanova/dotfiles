# Env variables
# export M2_HOME="/Users/eivanova/dev/tools/apache-maven-3.3.3"
# export PATH=$PATH:$M2_HOME/bin:/build/apps/bin
# export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,profile}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for many Bash commands
if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add git completion from http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
