declare
   cursor c_estados is
   select e.nm_estado,
          count(r.id_relatorio) as total
     from tb_gs_relatorio r
     join tb_gs_cidade c
   on r.id_cidade = c.id_cidade
     join tb_gs_estado e
   on c.id_estado = e.id_estado
    group by e.nm_estado
   having count(r.id_relatorio) > 0
    order by total desc;
begin
   for reg in c_estados loop
      dbms_output.put_line('Estado: '
                           || reg.nm_estado
                           || ' - Total Relatórios: '
                           || reg.total);
   end loop;
end;
/

declare
   cursor c_drones is
   select nm_modelo,
          nm_status
     from tb_gs_drone;
begin
   for d in c_drones loop
      if d.nm_status = 'ATIVO' then
         dbms_output.put_line('Drone '
                              || d.nm_modelo
                              || ' está em operação.');
      else
         dbms_output.put_line('Drone '
                              || d.nm_modelo
                              || ' está inativo.');
      end if;
   end loop;
end;
/