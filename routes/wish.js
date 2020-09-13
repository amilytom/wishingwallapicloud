var express = require('express');
var router = express.Router();

const WishController = require('../controllers/wish');

router.get('/', WishController.list);  // GET请求 定义许愿列表路由
router.get('/:id', WishController.info);  // GET请求 定义单条许愿路由
router.post('/', WishController.add);  // POST请求 定义添加许愿路由
router.put('/', WishController.update);  // put请求 定义修改许愿路由
router.delete('/', WishController.remove);  // DELETE请求 定义删除许愿路由

module.exports = router;   // 导出路由，供app.js文件调用