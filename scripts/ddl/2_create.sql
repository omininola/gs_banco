create table tb_gs_pais (
   id_pais numeric(5) not null,
   nm_pais varchar(100) not null
);

create table tb_gs_estado (
   id_estado numeric(5) not null,
   id_pais   numeric(5) not null,
   nm_estado varchar(100) not null,
   nm_sigla  varchar(5) null
);

create table tb_gs_cidade (
   id_cidade numeric(5) not null,
   id_estado numeric(5) not null,
   nm_cidade varchar(100) not null
);

create table tb_gs_usuario (
   id_usuario numeric(5) not null,
   nm_usuario varchar(100) not null,
   ds_senha   varchar(100) not null,
   ds_email   varchar(255) not null,
   nm_role    varchar(20) not null
);

create table tb_gs_drone (
   id_drone  numeric(5) not null,
   nm_modelo varchar(100) not null,
   nm_status varchar(20) not null,
   ds_drone  varchar(50) null
);

create table tb_gs_sensor (
   id_sensor numeric(5) not null,
   id_drone  numeric(5) not null,
   nm_tipo   varchar(50) not null,
   nm_status varchar(20) not null,
   ds_sensor varchar(50) null
);

create table tb_gs_relatorio (
   id_relatorio numeric(5) not null,
   id_cidade    numeric(5) not null,
   id_usuario   numeric(5) null,
   id_drone     numeric(5) null,
   ds_relatorio varchar(255) not null,
   dt_relatorio date not null
);

-- Primary keys
alter table tb_gs_pais add constraint pk_gs_pais primary key ( id_pais );

alter table tb_gs_estado add constraint pk_gs_estado primary key ( id_estado );

alter table tb_gs_cidade add constraint pk_gs_cidade primary key ( id_cidade );

alter table tb_gs_usuario add constraint pk_gs_usuario primary key ( id_usuario );

alter table tb_gs_drone add constraint pk_gs_drone primary key ( id_drone );

alter table tb_gs_sensor add constraint pk_gs_sensor primary key ( id_sensor );

alter table tb_gs_relatorio add constraint pk_gs_relatorio primary key ( id_relatorio );

-- Foreign keys
alter table tb_gs_estado
   add constraint fk_gs_estado_pais foreign key ( id_pais )
      references tb_gs_pais ( id_pais );

alter table tb_gs_cidade
   add constraint fk_gs_cidade_estado foreign key ( id_estado )
      references tb_gs_estado ( id_estado );

alter table tb_gs_sensor
   add constraint fk_gs_sensor_drone foreign key ( id_drone )
      references tb_gs_drone ( id_drone );

alter table tb_gs_relatorio
   add constraint fk_gs_relatorio_cidade foreign key ( id_cidade )
      references tb_gs_cidade ( id_cidade );

alter table tb_gs_relatorio
   add constraint fk_gs_relatorio_usuario foreign key ( id_usuario )
      references tb_gs_usuario ( id_usuario );

alter table tb_gs_relatorio
   add constraint fk_gs_relatorio_drone foreign key ( id_drone )
      references tb_gs_drone ( id_drone );

-- Unique constraints
alter table tb_gs_usuario add constraint un_gs_usuario_email unique ( ds_email );

-- Check constraints
alter table tb_gs_usuario
   add constraint chk_gs_usuario_role check ( nm_role in ( 'ADMIN',
                                                           'USER' ) );