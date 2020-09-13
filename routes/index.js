var express = require('express');
var router = express.Router();

const IndexController = require('../controllers/index');

router.post('/login', IndexController.login);  // POST请求 定义登录路由

module.exports = router;   // 导出路由，供app.js文件调用
