<?php
class PublicAction extends Action{
	//英文验证码
	public function verify(){
		import("ORG.Util.Image");
		Image::buildImageVerify();
	}
	
	//中文验证
	public function gbverify(){
		import('ORG.Util.Image');
		Image::GBVerify();
	}
}