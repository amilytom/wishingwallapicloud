// 默认dev配置
const config = {
  // 是否调试模式
  DEBUG: true,
  // MySQL数据库配置
  MYSQL: {
    host: 'localhost',
    database: 'wishforyou',
    username: 'root',
    password: '246810'
  }
};

if (process.env.NODE_ENV === 'production') {
  // 生产环境MySQL数据库配置
  config.MYSQL = {
    host: 'localhost',
    database: 'wishforyou',
    username: 'root',
    password: 'root'
  };
}
// 导出配置
module.exports = config;