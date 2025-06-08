select p.nm_pais,
       count(r.id_relatorio) as total
  from tb_gs_relatorio r
  join tb_gs_cidade c
on r.id_cidade = c.id_cidade
  join tb_gs_estado e
on c.id_estado = e.id_estado
  join tb_gs_pais p
on e.id_pais = p.id_pais
 group by p.nm_pais
 order by total desc;

select d.nm_modelo,
       count(s.id_sensor) as qtde_sensores
  from tb_gs_drone d
  left join tb_gs_sensor s
on d.id_drone = s.id_drone
 where d.nm_status = 'ATIVO'
 group by d.nm_modelo;

select u.nm_usuario,
       count(r.id_relatorio) as qtde
  from tb_gs_relatorio r
  join tb_gs_usuario u
on r.id_usuario = u.id_usuario
 group by u.nm_usuario
having count(*) > 1;

select *
  from tb_gs_drone d
 where not exists (
   select 1
     from tb_gs_sensor s
    where s.id_drone = d.id_drone
);

select *
  from (
   select *
     from tb_gs_relatorio
    order by dt_relatorio desc
)
 where rownum <= 10;