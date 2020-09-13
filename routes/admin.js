var express = require('express');
var router = express.Router();

const AdminController = require('../controllers/admin');

router.get('/', AdminController.list);  // GET请求 定义管理员列表路由
router.get('/:id', AdminController.info);  // GET请求 定义单条管理员路由
router.post('/', AdminController.add);  // POST请求 定义添加管理员路由
router.put('/', AdminController.update);  // put请求 定义修改管理员路由
router.delete('/', AdminController.remove);  // DELETE请求 定义删除管理员路由

module.exports = router;  // 导出路由，供app.js文件调用