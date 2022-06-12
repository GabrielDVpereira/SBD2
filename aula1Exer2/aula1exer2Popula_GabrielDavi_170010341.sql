insert into Pessoa(cpf, nome, senha, perfil) VALUES 
    ('00000000000', 'Pessoa 1', 'password', 'Gerente'),
    ('11111111111', 'Pessoa 2', 'password', 'Empregado'),
    ('22222222222', 'Pessoa 3', 'password', 'Empregado');

insert into Gerente(cpf, formacao,email) VALUES 
    ('00000000000', 'superior', 'pessoa1@email.com');

insert into Empregado(cpf, matricula, endereco, temHabilidade) VALUES 
    ('11111111111', '12345', 'endereço 1', FALSE),
    ('22222222222', '23456', 'endereço 2', TRUE);

insert into Contato(cpf_empregado, ddd, numero) VALUES 
    ('11111111111', '061', '11111-2222'),
    ('11111111111', '061', '11111-3333'),
    ('22222222222', '061', '11111-4444');


insert into Produto(preco, codigo) VALUES 
    (150.0, '1234'),
    (250.0, '1235'),
    (350.0, '1236');

insert into Venda(data, quantidade, total, cpf_empregado, codigo_produto) VALUES
    ('2022-12-12', 2, 300.0, '11111111111', '1234'),
    ('2022-12-12', 3, 1500.0, '22222222222', '1235'),
    ('2022-12-12', 2, 700.0, '11111111111', '1236');
