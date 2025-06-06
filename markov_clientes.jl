using LinearAlgebra
using Plots

# 1. Tamanho da matriz
println("Digite o número de estados (ex: 3 para Ativo, Inativo, Perdido): ")
n = parse(Int, readline())

# 2. Construindo a matriz de transição
T = zeros(Float64, n, n)

println("\nDigite a matriz de transição (linhas separadas por ENTER, valores separados por espaço):")
for i in 1:n
    println("Linha $i (valores somando aproximadamente 1):")
    T[i, :] = parse.(Float64, split(readline()))
end

# 3. Vetor de estado inicial
println("\nDigite o vetor de estado inicial (valores separados por espaço):")
x0 = parse.(Float64, split(readline()))
x0 = x0 / sum(x0)  # normaliza

# 4. Número de períodos para simular
println("\nDigite o número de períodos (meses, por exemplo) para simular:")
periodos = parse(Int, readline())

# 5. Simulação
evolucao = zeros(Float64, n, periodos + 1)
evolucao[:, 1] = x0

for t in 1:periodos
    evolucao[:, t+1] = T * evolucao[:, t]
end

# 6. Plot e salvar imagem
p = plot()
for i in 1:n
    plot!(0:periodos, evolucao[i, :], label="Estado $i", lw=2)
end

xlabel!("Período")
ylabel!("Proporção de clientes")
title!("Evolução da fidelidade de clientes (Cadeia de Markov)")

# Salvar imagem
savefig(p, "grafico_markov_clientes.png")
println("\n✅ Gráfico salvo como 'grafico_markov_clientes.png'")