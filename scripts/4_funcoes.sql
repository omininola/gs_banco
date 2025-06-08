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

-- Função que retorna o total de relatórios por país
create or replace function risco_medio_por_cidade (
   p_id_cidade in tb_gs_cidade.id_cidade%type
) return number is
   v_media number;
begin
   select count(*)
     into v_media
     from tb_gs_relatorio
    where id_cidade = p_id_cidade;

   return v_media;
end;