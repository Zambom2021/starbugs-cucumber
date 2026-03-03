#language: pt

Funcionalidade: Pedidos

  Como um usuário do site Starbugs, eu quero selecionar e comprar cafés
  Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

  @smoke
  Cenário: Realizar um pedido com sucesso
    Dado que estou na página principal da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faço a busca do seguinte CEP: "13348843"
        E informo os demais dados do endereço:
            | number  | 120  |
            | details | Casa |
        E escolho a forma de pagamento "Cartão de Débito"
        E por fim finalizo a compra

    Então sou redirecionado para a página de confirmação de Pedidos
        E deve ser informado o seguinte prazo de entrega: "20 min - 30 min"
 
  Cenário: Realizar um pedido com CEP inválido
    Dado que estou na página principal da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faço a busca do seguinte CEP: "00000000"

    Então deve ser exibida mensagem: "Informe um CEP válido"

  @temp  
  Cenário: Realizar um pedido sem indicar o metodo de pagamento
    Dado que estou na página principal da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faço a busca do seguinte CEP: "05170060"
        E informo os demais dados do endereço:
            | number  | 120  |
            | details | Casa |
        E por fim finalizo a compra

    Então deve ser exibida mensagem: "Informe o método de pagamento"

