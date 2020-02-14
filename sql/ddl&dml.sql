 create table sys_menu (
	menu_id int primary key not null auto_increment comment '菜单ID',
	parent_id int,
	menu_name char(50),
	menu_status char(1) comment '菜单状态 1启用， 0未启用',
	menu_url char(200) comment '菜单路径',
	remark char(100)
) comment '菜单表';

create table sys_role(
	role_id int primary key not null auto_increment comment '角色ID',
	role_name char(50),
	remark char(100)
) comment '角色表';

create table sys_role_menu(
	id int primary key not null auto_increment,
	role_id int,
	menu_id int
)comment '角色菜单表';
