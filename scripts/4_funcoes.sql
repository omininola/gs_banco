   SET SERVEROUTPUT ON

-- Função que retorna o total de relatórios por estado
create or replace function total_relatorios_estado (
   p_id_estado in tb_gs_estado.id_estado%type
) return number is
   v_total number;
begin
   select count(*)
     into v_total
     from tb_gs_relatorio r
     join tb_gs_cidade c
   on r.id_cidade = c.id_cidade
    where c.id_estado = p_id_estado;

   return v_total;
end;
/

-- Execução
begin
   dbms_output.put_line(total_relatorios_estado(1));
   dbms_output.put_line(total_relatorios_estado(2));
   dbms_output.put_line(total_relatorios_estado(3));
   dbms_output.put_line(total_relatorios_estado(4));
   dbms_output.put_line(total_relatorios_estado(5));
end;
/

-- Função que retorna a porcentagem de relatórios que pertençam a uma cidade específica 
-- Representando o risco médio de acordo com a quantidade total de relatórios registrados
create or replace function risco_medio_por_cidade (
   p_id_cidade in tb_gs_cidade.id_cidade%type
) return number is
   v_relatorio_total_geral  number;
   v_relatorio_total_cidade number;
begin
   select count(*)
     into v_relatorio_total_geral
     from tb_gs_relatorio;

   select count(*)
     into v_relatorio_total_cidade
     from tb_gs_relatorio
    where id_cidade = p_id_cidade;

   return ( v_relatorio_total_cidade / v_relatorio_total_geral ) * 100;
end;
/

begin
   dbms_output.put_line(risco_medio_por_cidade(1));
   dbms_output.put_line(risco_medio_por_cidade(2));
   dbms_output.put_line(risco_medio_por_cidade(3));
   dbms_output.put_line(risco_medio_por_cidade(4));
   dbms_output.put_line(risco_medio_por_cidade(5));
end;
/