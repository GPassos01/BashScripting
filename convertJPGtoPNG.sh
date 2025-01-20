<<EXERCICIO 
    Crie um script que seja capaz de converter todos os arquivos com extensão .jpgde um diretório para .png de forma simples.
EXERCICIO

read -p "Entre com o diretorio com as imagens JPG: " diretorio
if [ ! -d "$diretorio" ]; then
    echo "Diretório não encontrado: $diretorio"
    exit 1
fi

for imagem_jpg in "$diretorio"/*.jpg; do
    convert "$imagem_jpg" "${imagem_jpg%.jpg}.png"
    echo "Imagem convertida: $imagem_jpg"
done

echo "Conversao concluida!"