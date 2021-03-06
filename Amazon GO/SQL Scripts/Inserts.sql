-- MySQL Script generated by MySQL Workbench
-- Tue Dec  1 22:24:52 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

START TRANSACTION;
USE `amazon_go`;

INSERT INTO `amazon_go`.`Cliente` (`CPF`, `Nome`, `Endereço`, `E-mail`, `Cartões de Crédito`, `Data de Nascimento`) VALUES (45486, 'Davi Rodrigues Azevedo', 'Rua João Dalmolin, 1095', 'DaviRodriguesAzevedo@jourrapide.com', '5531 0048 0465 1544', '1988-12-12');
INSERT INTO `amazon_go`.`Cliente` (`CPF`, `Nome`, `Endereço`, `E-mail`, `Cartões de Crédito`, `Data de Nascimento`) VALUES (65300, 'Maria Cardoso Oliveira', 'Rua Geraldo Alves dos Santos, 822', 'MariaCardosoOliveira@dayrep.com', '4539 3432 7782 0268', '1990-05-25');

INSERT INTO `amazon_go`.`Cesto_de_Compras` (`id_cesto`, `valor_total`) VALUES (0001, NULL);

INSERT INTO `amazon_go`.`Aplicativo` (`CPF_cliente`, `Cesto de Compras`, `Histórico`) VALUES (45486, 0001, NULL);

INSERT INTO `amazon_go`.`Produto` (`id_prod`, `Setor`, `Prateleira`, `Nome`, `Marca`, `Data de Validade`, `Lote`, `Preço`) VALUES (0001, 'Laticínios', '45A', 'Iogurte Grego', 'Vigor', '2020-01-12', '456482A', 4.80);
INSERT INTO `amazon_go`.`Produto` (`id_prod`, `Setor`, `Prateleira`, `Nome`, `Marca`, `Data de Validade`, `Lote`, `Preço`) VALUES (0457, 'Alcoólicos', '01X', 'Vinho Carbenet Sauvignon', 'El Toro', '2025-06-25', 'X448AB45', 75.90);

INSERT INTO `amazon_go`.`Franquia` (`id_franquia`, `CNPJ`, `Endereço`) VALUES (001, '15.436.940/0001-03', '2131 7th Ave, Seattle, WA');

INSERT INTO `amazon_go`.`Funcionário` (`id_funcionario`, `Cargo`, `Nome`, `CPF`, `Franquia`) VALUES (045, 'Repositor de Estoque', 'Erika A. Green', 45655, 001);

INSERT INTO `amazon_go`.`Cesto_contem_Produto` (`id_cesto_de_compras`, `id_do_produto`) VALUES (0001, 0457);

INSERT INTO `amazon_go`.`Franquia possui Produto` (`Produto_id_prod`, `Franquia_id_franquia`) VALUES (0457, 001);
