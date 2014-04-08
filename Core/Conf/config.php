<?php
return array(
	//'配置项'=>'配置值'
	'SHOW_PAGE_TRACE'=>true, //开启trace
	'APP_GROUP_LIST'=>'Home,Admin,Common', //分组
	'DEFAULT_GROUP'=>'Home', //默认分组
	
	'LOAD_EXT_CONFIG'=>'db', //添加数据库配置

	'TMPL_L_DELIM'=>'<{', //左定界符
	'TMPL_R_DELIM'=>'}>', //又定界符
	
	'URL_MODEL'=>0, //0普通模式,1 pathinfo模式, 2
);
?>