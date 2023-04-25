# Use a imagem oficial do MediaWiki 1.39 como imagem base
FROM mediawiki:1.39

# Defina o diretório de trabalho para o diretório de extensões do MediaWiki
WORKDIR /var/www/html/extensions

# Baixe e instale o plugin PortableInfobox
RUN git clone https://github.com/Universal-Omega/PortableInfobox.git 

# Retorne para o diretório raiz do MediaWiki
WORKDIR /var/www/html

# Exponha a porta 80 para acesso ao servidor web do MediaWiki
EXPOSE 80