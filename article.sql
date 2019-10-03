create database egg_blog;
use egg_blog;
create table article(
  id int(10) not null auto_increment,
  img text default null comment '缩略图',
  title varchar(80) default null  comment '文章',
  summary varchar(300) default null comment '简介',
  content text default null comment '内容',
  createTime timestamp default null comment '发布时间',
  primary key(id)
) engine=InnoDB AUTO_INCREMENT=1 comment '文章表';


insert into article(img,title, summary, content, createTime)
values('http://pic27.nipic.com/20130402/2786001_165104993000_2.jpg', '编程必备知识', 
'Next.js 是一个轻量级的 React 服务端渲染应用框架。有了它我们可以简单轻松的实现React的服务端渲染，从而加快首屏打开速度，也可以作SEO（收索引擎优化了）',
'我知道大部分看这个视频的都是老朋友了，但也不乏有些新来的朋友。所以还是要简单介绍一下自己。

技术胖 ，12年程序员经验，专注于前端开发。目前目标是在程序生涯前录制1000集免费视频，帮助更多人喜欢编程。

此套视频也是完全免费的，你不用花费一分钱就可以在博客和B站上看到我的视频。

正确的学习顺序应该是先首开视频教程，在收看时你不用记录任何的笔记，看完一遍视频后，你到博客上，已经为你整理好了所有的笔记。然后你安装文字笔记把视频中的内容呈现一遍。目前来说，这个学习方法效果很好，而且可以节省你大量的时间。

如果你希望和小伙伴一起学习讨论，也可以加入博客右边的QQ学习群159579268,已经有1000多人一起学习React了，在这里你可以和小伙伴们一起讨论问题。

如果你经济允许，我也希望你加入我的小密圈，加入后你可以得到更多的学习帮助还有高清视频下载，可以随时利用零散时间学习。

更新频率：一周三集视频和文章，因为我只是下班才能录制这个，所以这也算是我最快的速度了。

#学前知识
学习本门课程你需要了解基本的React知识。如果没有React的知识也不要紧，我已经为你准备好了前置课程。（并且都是免费的）

1.React16免费视频教程（共28集）

2.Redux免费视频教程（共24集）

3.React Router 免费文字视频教程（共9集）

4.React Hooks 免费视频教程(共11集)

#Next.js简介
Next.js 是一个轻量级的 React 服务端渲染应用框架。

用一个框架，就要知道它的优点（或者是解决了我们什么问题）:

完善的React项目架构，搭建轻松。比如：Webpack配置，服务器启动，路由配置，缓存能力，这些在它内部已经完善的为我们搭建完成了。

自带数据同步策略，解决服务端渲染最大难点。把服务端渲染好的数据，拿到客户端重用，这个在没有框架的时候，是非常复杂和困难的。有了Next.js，它为我们提供了非常好的解决方法，让我们轻松的就可以实现这些步骤。

丰富的插件帮开发人员增加各种功能。每个项目的需求都是不一样的，包罗万象。无所不有，它为我们提供了插件机制，让我们可以在使用的时候按需使用。你也可以自己写一个插件，让别人来使用。

灵活的配置，让开发变的更简单。它提供很多灵活的配置项，可以根据项目要求的不同快速灵活的进行配置。

目前Next.js是React服务端渲染的最佳解决方案，所以如果你想使用React来开发需要SEO的应用，基本上就要使用Next.js。', '2019-10-03');