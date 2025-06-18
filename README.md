Instruções para funcionamento

1 Julia instalada no seu computador.
 Se ainda não tiver:


- Vá para: https://julialang.org/downloads/


- Baixe a versão estável (ex: Julia 1.10.x)


- Instale normalmente.


2 Editor de código:


- VS Code (por exemplo) com extensão Julia


- ou apenas o terminal Julia (REPL)


3 O arquivo que você baixou do trabalho de fidelidade.




 Passo a passo para rodar o código

1. Coloque o arquivo .jl no seu computador
Salve o arquivo em uma pasta fácil de acessar, como a sua Área de Trabalho ou Documentos/Julia/.


2. Instale os pacotes necessários
- using Pkg
- Pkg.add("Plots")

3. Rode o arquivo .jl
- cd("caminho/para/a/pasta")
- include("markov_clientes.jl")





Funcionamento e exemplo de uso

Exemplo de Uso no terminal

Digite o número de estados: (fiéis, ocasionais e perdidos)
3

Digite a matriz de transição:
- Linha 1: 0.7 0.2 0.1
- Linha 2: 0.3 0.5 0.2
- Linha 3: 0.0 0.0 1.0

Digite o vetor de estado inicial:
0.9 0.1 0.0

Digite o número de períodos:
12

*As proporções devem somar exatamente 1.0.

Saída
- Um gráfico salvo como grafico_markov_clientes.png, que mostra como a proporção de clientes em cada estado evolui ao longo do tempo.
- Mensagens de terminal orientando o usuário em cada etapa da execução.
