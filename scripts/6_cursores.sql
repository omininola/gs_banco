declare
   cursor c_relatorios is
   select r.id_relatorio,
          c.nm_cidade
     from tb_gs_relatorio r
     join tb_gs_cidade c
   on r.id_cidade = c.id_cidade;

   v_id_relatorio tb_gs_relatorio.id_relatorio%type;
   v_nm_cidade    tb_gs_cidade.nm_cidade%type;
begin
   open c_relatorios;
   loop
      fetch c_relatorios into
         v_id_relatorio,
         v_nm_cidade;
      exit when c_relatorios%notfound;
      dbms_output.put_line('Relatório ID: '
                           || v_id_relatorio
                           || ' - Cidade: '
                           || v_nm_cidade);
   end loop;
   close c_relatorios;
end;

declare
   cursor c_sensores is
   select s.nm_tipo,
          d.nm_modelo
     from tb_gs_sensor s
     join tb_gs_drone d
   on s.id_drone = d.id_drone;
begin
   for reg in c_sensores loop
      dbms_output.put_line('Sensor: '
                           || reg.nm_tipo
                           || ' - Drone: '
                           || reg.nm_modelo);
   end loop;
end;