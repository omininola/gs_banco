select p.nm_pais,
       count(r.id_relatorio) as total_relatorios
  from tb_gs_relatorio r
  join tb_gs_cidade c
on r.id_cidade = c.id_cidade
  join tb_gs_estado e
on c.id_estado = e.id_estado
  join tb_gs_pais p
on e.id_pais = p.id_pais
 group by p.nm_pais
 order by total_relatorios desc;

select d.nm_modelo,
       count(s.id_sensor) as qtde_sensores
  from tb_gs_drone d
  left join tb_gs_sensor s
on d.id_drone = s.id_drone
 where d.nm_status = 'Ativo'
 group by d.nm_modelo;

select u.nm_usuario,
       count(r.id_relatorio) as qtde_relatorios
  from tb_gs_relatorio r
  join tb_gs_usuario u
on r.id_usuario = u.id_usuario
 group by u.nm_usuario
 order by qtde_relatorios desc;

select d.id_drone,
       d.nm_modelo,
       d.nm_status,
       count(r.id_relatorio) as qtde_relatorios
  from tb_gs_drone d
  left join tb_gs_relatorio r
on d.id_drone = r.id_drone
 group by d.id_drone,
          d.nm_modelo,
          d.nm_status
 order by qtde_relatorios desc;

select p.nm_pais,
       e.nm_estado,
       c.nm_cidade
  from tb_gs_cidade c
  join tb_gs_estado e
on c.id_estado = e.id_estado
  join tb_gs_pais p
on e.id_pais = p.id_pais;