-- Criando a tabela "produtos"
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  estoque INT NOT NULL
);

-- Criando a tabela "clientes"
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL
);

-- Criando a tabela "vendas"
CREATE TABLE vendas (
  id INT PRIMARY KEY,
  cliente_id INT NOT NULL,
  data DATE NOT NULL,
  valor_total DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Criando a tabela "itens_venda"
CREATE TABLE itens_venda (
  id INT PRIMARY KEY,
  venda_id INT NOT NULL,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL,
  FOREIGN KEY (venda_id) REFERENCES vendas(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
