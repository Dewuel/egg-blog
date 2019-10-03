/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1569976767019_4333';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };
  config.mysql = {
    client: {
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: 'qaz778899',
      database: 'egg_blog',
    },
    app: true,
    agent: false,
  };
  exports.security = {
    csrf: {
      enable: false,
    },
  };
  return {
    ...config,
    ...userConfig,
  };
};
