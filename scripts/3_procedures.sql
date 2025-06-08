-- Tabela Pais
-- Insert
create procedure inserir_pais (
   p_id_pais in tb_gs_pais.id_pais%type,
   p_nm_pais in tb_gs_pais.nm_pais%type
) as
begin
   insert into tb_gs_pais (
      id_pais,
      nm_pais
   ) values ( p_id_pais,
              p_nm_pais );
end;

-- Update
create procedure atualizar_pais (
   p_id_pais in tb_gs_pais.id_pais%type,
   p_nm_pais in tb_gs_pais.nm_pais%type
) as
begin
   update tb_gs_pais
      set
      nm_pais = p_nm_pais
    where id_pais = p_id_pais;
end;

-- Delete
create procedure excluir_pais (
   p_id_pais in tb_gs_pais.id_pais%type
) as
begin
   delete from tb_gs_pais
    where id_pais = p_id_pais;
end;

-- Execução
begin
   inserir_pais(
      1,
      'Brasil'
   );
   inserir_pais(
      2,
      'Argentina'
   );
   inserir_pais(
      3,
      'Chile'
   );
   inserir_pais(
      4,
      'Uruguai'
   );
   inserir_pais(
      5,
      'Paraguai'
   );
end;


-- Tabela Estado
-- Insert
create procedure inserir_estado (
   p_id_estado in tb_gs_estado.id_estado%type,
   p_nm_estado in tb_gs_estado.nm_estado%type,
   p_id_pais   in tb_gs_pais.id_pais%type
) as
begin
   insert into tb_gs_estado (
      id_estado,
      nm_estado,
      id_pais
   ) values ( p_id_estado,
              p_nm_estado,
              p_id_pais );
end;

-- Update
create procedure atualizar_estado (
   p_id_estado in tb_gs_estado.id_estado%type,
   p_nm_estado in tb_gs_estado.nm_estado%type,
   p_id_pais   in tb_gs_pais.id_pais%type
) as
begin
   update tb_gs_estado
      set nm_estado = p_nm_estado,
          id_pais = p_id_pais
    where id_estado = p_id_estado;
end;

-- Delete
create procedure excluir_estado (
   p_id_estado in tb_gs_estado.id_estado%type
) as
begin
   delete from tb_gs_estado
    where id_estado = p_id_estado;
end;

-- Execução
begin
   inserir_estado(
      1,
      'São Paulo',
      1
   );
   inserir_estado(
      2,
      'Minas Gerais',
      1
   );
   inserir_estado(
      3,
      'Pernambuco',
      1
   );
   inserir_estado(
      4,
      'Tocantins',
      1
   );
   inserir_estado(
      5,
      'Rio Grande do Sul',
      1
   );
end;


-- Tabela Cidade
-- Insert
create procedure inserir_cidade (
   p_id_cidade in tb_gs_cidade.id_cidade%type,
   p_nm_cidade in tb_gs_cidade.nm_cidade%type,
   p_id_estado in tb_gs_estado.id_estado%type
) as
begin
   insert into tb_gs_cidade (
      id_cidade,
      nm_cidade,
      id_estado
   ) values ( p_id_cidade,
              p_nm_cidade,
              p_id_estado );
end;

-- Update
create procedure atualizar_cidade (
   p_id_cidade in tb_gs_cidade.id_cidade%type,
   p_nm_cidade in tb_gs_cidade.nm_cidade%type,
   p_id_estado in tb_gs_estado.id_estado%type
) as
begin
   update tb_gs_cidade
      set nm_cidade = p_nm_cidade,
          id_estado = p_id_estado
    where id_cidade = p_id_cidade;
end;

-- Delete
create procedure excluir_cidade (
   p_id_cidade in tb_gs_cidade.id_cidade%type
) as
begin
   delete from tb_gs_cidade
    where id_cidade = p_id_cidade;
end;

-- Execução
begin
   inserir_cidade(
      1,
      'São Paulo',
      1
   );
   inserir_cidade(
      2,
      'Campinas',
      1
   );
   inserir_cidade(
      3,
      'Belo Horizonte',
      2
   );
   inserir_cidade(
      4,
      'Recife',
      3
   );
   inserir_cidade(
      5,
      'Porto Alegre',
      5
   );
end;


-- Tabela Usuario
-- Insert
create procedure inserir_usuario (
   p_id_usuario in tb_gs_usuario.id_usuario%type,
   p_nm_usuario in tb_gs_usuario.nm_usuario%type,
   p_nm_email   in tb_gs_usuario.nm_email%type,
   p_nm_senha   in tb_gs_usuario.nm_senha%type,
   p_nm_role    in tb_gs_usuario.nm_role%type
) as
begin
   insert into tb_gs_usuario (
      id_usuario,
      nm_usuario,
      nm_email,
      nm_senha,
      nm_role
   ) values ( p_id_usuario,
              p_nm_usuario,
              p_nm_email,
              p_nm_senha,
              p_nm_role );
end;

-- Update
create procedure atualizar_usuario (
   p_id_usuario in tb_gs_usuario.id_usuario%type,
   p_nm_usuario in tb_gs_usuario.nm_usuario%type,
   p_nm_email   in tb_gs_usuario.nm_email%type,
   p_nm_senha   in tb_gs_usuario.nm_senha%type,
   p_nm_role    in tb_gs_usuario.nm_role%type
) as
begin
   update tb_gs_usuario
      set nm_usuario = p_nm_usuario,
          nm_email = p_nm_email,
          nm_senha = p_nm_senha,
          nm_role = p_nm_role
    where id_usuario = p_id_usuario;
end;

-- Delete
create procedure excluir_usuario (
   p_id_usuario in tb_gs_usuario.id_usuario%type
) as
begin
   delete from tb_gs_usuario
    where id_usuario = p_id_usuario;
end;

-- Execução
begin
   inserir_usuario(
      1,
      'João Silva',
      'joao@email.com',
      'senha123',
      'admin'
   );
   inserir_usuario(
      2,
      'Maria Oliveira',
      'maria@email.com',
      'senha456',
      'user'
   );
   inserir_usuario(
      3,
      'Carlos Souza',
      'carlos@email.com',
      'senha789',
      'user'
   );
   inserir_usuario(
      4,
      'Ana Costa',
      'ana@email.com',
      'senha101',
      'user'
   );
   inserir_usuario(
      5,
      'Pedro Santos',
      'pedro@email.com',
      'senha202',
      'user'
   );
end;


-- Tabela Drone
-- Insert
create procedure inserir_drone (
   p_id_drone     in tb_gs_drone.id_drone%type,
   p_nm_modelo    in tb_gs_drone.nm_modelo%type,
   p_nm_status    in tb_gs_drone.nm_status%type,
   p_nm_descricao in tb_gs_drone.nm_descricao%type
) as
begin
   insert into tb_gs_drone (
      id_drone,
      nm_modelo,
      nm_status,
      nm_descricao
   ) values ( p_id_drone,
              p_nm_modelo,
              p_nm_status,
              p_nm_descricao );
end;

-- Update
create procedure atualizar_drone (
   p_id_drone     in tb_gs_drone.id_drone%type,
   p_nm_modelo    in tb_gs_drone.nm_modelo%type,
   p_nm_status    in tb_gs_drone.nm_status%type,
   p_nm_descricao in tb_gs_drone.nm_descricao%type
) as
begin
   update tb_gs_drone
      set nm_modelo = p_nm_modelo,
          nm_status = p_nm_status,
          nm_descricao = p_nm_descricao
    where id_drone = p_id_drone;
end;

-- Delete
create procedure excluir_drone (
   p_id_drone in tb_gs_drone.id_drone%type
) as
begin
   delete from tb_gs_drone
    where id_drone = p_id_drone;
end;

-- Execução
begin
   inserir_drone(
      1,
      'Drone A',
      'Ativo',
      'Drone de reconhecimento'
   );
   inserir_drone(
      2,
      'Drone B',
      'Inativo',
      'Drone de transporte'
   );
   inserir_drone(
      3,
      'Drone C',
      'Ativo',
      'Drone de vigilância'
   );
   inserir_drone(
      4,
      'Drone D',
      'Ativo',
      'Drone de mapeamento'
   );
   inserir_drone(
      5,
      'Drone E',
      'Inativo',
      'Drone de inspeção'
   );
end;


-- Tabela Sensor
-- Insert
create procedure inserir_sensor (
   p_id_sensor    in tb_gs_sensor.id_sensor%type,
   p_nm_tipo      in tb_gs_sensor.nm_tipo%type,
   p_nm_status    in tb_gs_sensor.nm_status%type,
   p_nm_descricao in tb_gs_sensor.nm_descricao%type,
   p_id_drone     in tb_gs_drone.id_drone%type
) as
begin
   insert into tb_gs_sensor (
      id_sensor,
      nm_tipo,
      nm_status,
      nm_descricao,
      id_drone
   ) values ( p_id_sensor,
              p_nm_tipo,
              p_nm_status,
              p_nm_descricao,
              p_id_drone );
end;

-- Update
create procedure atualizar_sensor (
   p_id_sensor    in tb_gs_sensor.id_sensor%type,
   p_nm_tipo      in tb_gs_sensor.nm_tipo%type,
   p_nm_status    in tb_gs_sensor.nm_status%type,
   p_nm_descricao in tb_gs_sensor.nm_descricao%type,
   p_id_drone     in tb_gs_drone.id_drone%type
) as
begin
   update tb_gs_sensor
      set nm_tipo = p_nm_tipo,
          nm_status = p_nm_status,
          nm_descricao = p_nm_descricao,
          id_drone = p_id_drone
    where id_sensor = p_id_sensor;
end;

-- Delete
create procedure excluir_sensor (
   p_id_sensor in tb_gs_sensor.id_sensor%type
) as
begin
   delete from tb_gs_sensor
    where id_sensor = p_id_sensor;
end;

-- Execução
begin
   inserir_sensor(
      1,
      'Câmera',
      'Ativo',
      'Sensor de imagem',
      1
   );
   inserir_sensor(
      2,
      'GPS',
      'Ativo',
      'Sensor de localização',
      2
   );
   inserir_sensor(
      3,
      'Temperatura',
      'Inativo',
      'Sensor de temperatura',
      3
   );
   inserir_sensor(
      4,
      'Pressão',
      'Ativo',
      'Sensor de pressão atmosférica',
      4
   );
   inserir_sensor(
      5,
      'Ultrassom',
      'Inativo',
      'Sensor de distância por ultrassom',
      5
   );
end;


-- Tabela Relatório
-- Insert
create procedure inserir_relatorio (
   p_id_relatorio in tb_gs_relatorio.id_relatorio%type,
   p_nm_descricao in tb_gs_relatorio.nm_descricao%type,
   p_dt_relatorio in tb_gs_relatorio.dt_relatorio%type,
   p_id_cidade    in tb_gs_cidade.id_cidade%type,
   p_id_usuario   in tb_gs_usuario.id_usuario%type,
   p_id_drone     in tb_gs_drone.id_drone%type
) as
begin
   insert into tb_gs_relatorio (
      id_relatorio,
      nm_descricao,
      dt_relatorio,
      id_cidade,
      id_usuario,
      id_drone
   ) values ( p_id_relatorio,
              p_nm_descricao,
              p_dt_relatorio,
              p_id_cidade,
              p_id_usuario,
              p_id_drone );
end;

-- Update
create procedure atualizar_relatorio (
   p_id_relatorio in tb_gs_relatorio.id_relatorio%type,
   p_nm_descricao in tb_gs_relatorio.nm_descricao%type,
   p_dt_relatorio in tb_gs_relatorio.dt_relatorio%type,
   p_id_cidade    in tb_gs_cidade.id_cidade%type,
   p_id_usuario   in tb_gs_usuario.id_usuario%type,
   p_id_drone     in tb_gs_drone.id_drone%type
) as
begin
   update tb_gs_relatorio
      set nm_descricao = p_nm_descricao,
          dt_relatorio = p_dt_relatorio,
          id_cidade = p_id_cidade,
          id_usuario = p_id_usuario,
          id_drone = p_id_drone
    where id_relatorio = p_id_relatorio;
end;

-- Delete
create procedure excluir_relatorio (
   p_id_relatorio in tb_gs_relatorio.id_relatorio%type
) as
begin
   delete from tb_gs_relatorio
    where id_relatorio = p_id_relatorio;
end;

-- Execução
begin
   inserir_relatorio(
      1,
      'Fogo avistado no centro da cidade',
      to_date('2025-06-01',
                     'YYYY-MM-DD'),
      1,
      1,
      null
   );
   inserir_relatorio(
      2,
      'COD 762, LAT 37.7749, LON -122.4194',
      to_date('2025-06-02',
                     'YYYY-MM-DD'),
      2,
      null,
      2
   );
   inserir_relatorio(
      3,
      'Eu vi um incêndio na floresta',
      to_date('2025-06-03',
                     'YYYY-MM-DD'),
      3,
      3,
      null
   );
   inserir_relatorio(
      4,
      'Fogo avistado perto da prefeitura',
      to_date('2025-06-04',
                     'YYYY-MM-DD'),
      4,
      4,
      null
   );
   inserir_relatorio(
      5,
      'COD 6721, LAT -34.6037, LON -58.3816',
      to_date('2025-06-05',
                     'YYYY-MM-DD'),
      5,
      null,
      5
   );
end;