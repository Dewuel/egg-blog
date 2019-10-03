'use strict';
const { Controller } = require('egg');
const moment = require('moment');

class ArticleController extends Controller {
  async create() {
    const { ctx } = this;
    const data = {
      ...ctx.request.body,
      createTime: moment().format('YYYY-MM-DD HH:mm:ss'),
    };
    const result = await ctx.service.article.create(data);
    if (result) {
      ctx.body = {
        status: 200,
        data: result,
        msg: '创建成功',
      };
    } else {
      ctx.body = {
        status: 500,
        errMsg: '获取失败',
      };
    }
  }

  async list() {
    const { ctx } = this;
    const result = await ctx.service.article.list();
    if (result) {
      ctx.body = {
        status: 200,
        msg: '获取成功',
        data: result,
      };
    } else {
      ctx.body = {
        status: 500,
        errMsg: '获取失败',
      };
    }
  }

  async detail() {
    const { ctx } = this;
    const { id } = ctx.params;
    const result = await ctx.service.article.detail(id);
    if (result) {
      ctx.body = {
        status: 200,
        data: result,
      };
    } else {
      ctx.body = {
        status: 500,
        errMsg: '请求失败',
      };
    }
  }
}

module.exports = ArticleController;
