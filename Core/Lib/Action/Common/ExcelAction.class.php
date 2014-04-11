<?php
class ExcelAction extends Action{

	public function index(){
		$this->display();
	}

	public function upload_sn(){
		import('ORG.Net.UploadFile');
		import('ORG.ExcelToArrary');//导入excelToArray类

		//上传
		$upload_file = new UploadFile();
		$upload_file->savePath =  './Statics/Uploads/sn/';// 设置附件上传目录
		$upload_file->allowExts  = array('xlsx', 'xls');
		if(!$upload_file->upload()) {// 上传错误提示错误信息
			$this->error($upload_file->getErrorMsg());
		}else{// 上传成功 获取上传文件信息
			$info =  $upload_file->getUploadFileInfo();
			$file_name =  $_SERVER['DOCUMENT_ROOT'] . $info[0]['savepath'].$info[0]['savename'];
			$ExcelToArrary=new ExcelToArrary();//实例化
			$res=$ExcelToArrary->read($file_name,"UTF-8",$info[0]['extension']);
			foreach ( $res as $k => $v ) //循环excel表
			{
				$k=$k-1;//addAll方法要求数组必须有0索引
				$data[$k]['name1'] = $v [0];//创建二维数组
				$data[$k]['name2'] = $v [1];
				$data[$k]['name3'] = $v [2];
				$data[$k]['name4'] = $v [3];
			}
		}
		
	}
}