# Instalation
cd ~  
https://github.com/Seralto/vim  
ln -s ~/.vim/vimrc ~/.vimrc  
cd ~/.vim  
git submodule update --init  

# To update a plugin
cd ~/.vim/bundle/fugitive  
git pull origin master  

# To update all plugins
git submodule foreach git pull origin master  
