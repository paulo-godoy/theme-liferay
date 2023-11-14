async function callUnsplash() {
  try {
    const response = await fetch(
      "https://api.unsplash.com/photos/random?client_id=sua_chave_aqui",
      {
        headers: {
          Authorization: "Bearer sua_chave_aqui",
        },
      }
    );
    const data = await response.json();

    // Extrai a imagem, o título e a descrição da resposta
    const imageUrl = data.urls.regular;
    const title = data.alt_text;
    const description = data.description;

    // Atualiza o HTML da página com os dados retornados pela API do Unsplash
    document.getElementById("image").src = imageUrl;
    document.getElementById("title").innerText = title;
    document.getElementById("content").innerText = description;
  } catch (error) {
    console.error("Ocorreu um erro ao chamar a API:", error);
  }
}

// Chama a função quando a página for carregada
document.addEventListener("DOMContentLoaded", callUnsplash);
