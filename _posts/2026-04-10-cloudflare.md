---
title: "Cloudflare"
date: 2026-04-10
categories: [云服务与厂商, 国外]
math: true        # 数学公式
mermaid: true     # Mermaid 图表
toc: true         # 目录
comments: false    # 评论
pin: false        # 置顶
image:
  path: https://i.111666.best/image/tvP4pWRcTPbtrcVtuiK1qq.png
---

Cloudflare 是一家总部位于美国旧金山的全球科技公司，其使命是“帮助打造一个更好的互联网”（Help build a better Internet）。它通过庞大的全球边缘网络（Connectivity Cloud），为网站、应用、AI 代理和企业网络提供安全防护、性能加速和开发工具。目前，Cloudflare 的网络覆盖超过 125 个国家/地区的 330 多个城市，每天处理数亿个请求，约 20% 的互联网网站使用其服务

### 公司服务

Cloudflare 的核心是作为一个反向代理（reverse proxy），位于网站访客和源服务器之间，同时提供安全、性能和计算能力。它不是传统硬件销售商，而是 SaaS + 边缘计算平台，服务分为几大类

#### 安全服务

DDoS 防护：

拥有 477 Tbps 的网络容量，能自动缓解史上最大规模的 DDoS 攻击（包括超大规模 HTTP/2 Rapid Reset 等），多数攻击在 3 秒内缓解

Web Application Firewall (WAF)、Bot 管理、API 安全；实时阻挡恶意流量、机器人和攻击

Zero Trust / Cloudflare One（SASE 平台）：为企业网络、远程员工和 AI 应用提供零信任访问，保护整个基础设施

#### 性能与加速服务

Content Delivery Network (CDN)：全球缓存内容，显著降低加载时间

Argo Smart Routing 等智能路由，提升网站和应用的响应速度

DNS 服务（包括 1.1.1.1 公共 DNS 解析器，非常快速且注重隐私）

#### 开发者与边缘计算服务

Cloudflare Workers：无服务器（serverless）平台，在全球边缘部署代码，实现低延迟计算

Workers AI：支持在边缘运行 AI 模型，帮助开发者快速构建和扩展 AI 应用

#### 其他

域名注册等

*Cloudflare被戏称为“赛博大善人”，因为他在免费套餐下能用很多功能*

### 起源

Cloudflare 的起源可以追溯到 2004 年，当时联合创始人 Matthew Prince 和 Lee Holloway 开始研究“垃圾邮件从哪里来”，开发了 Project Honey Pot（蜜罐项目），一个帮助网站追踪垃圾邮件来源的系统

2009 年，Matthew Prince、Lee Holloway 和 Michelle Zatlyn 在哈佛商学院完善商业计划，正式创立 Cloudflare。公司在当年赢得哈佛商学院商业计划竞赛，并获得早期融资

2010 年 9 月 27 日：在 TechCrunch Disrupt 大会上正式公开发布服务，早期 beta 测试中，用户惊喜地发现不仅安全提升，网站加载速度还平均加快 30%

2019 年 9 月 13 日：在纽约证券交易所上市（股票代码：NYSE: NET）成为公开上市公司，IPO 首日市值约 52.8 亿美元

2020年 至今：持续扩张到 Zero Trust、企业网络防护、边缘计算和 AI 领域，收购了 Area 1 Security 等公司，网络扩展到 330+ 数据中心，推出 Birthday Week 传统（每年生日周发布大量新功能）目前分布在 13 个国家

*Cloudflare服务约 20% 的全球网站，每天处理数千万 HTTP 请求，是全球最大的 DNS 提供商之一，保护了包括大量 Fortune 1000 公司（约 30%）、政府、非营利组织在内的数百万客户，大型客户增长迅速，付费客户超过 18 万*

*上市后营收持续高速增长（2024 年约 16.7 亿美元，近年 TTM 营收已超 20 亿美元），市值曾显著提升，被视为高估值 SaaS 公司代表，早期融资后估值稳步上升*

### 成就

缓解史上最大 DDoS 攻击（2025 年 Q3 达 29.7 Tbps）

免费 Universal SSL 推动全球加密普及

创新产品如 1.1.1.1 DNS、Workers 平台、Cloudflare One SASE

多次入选 Fortune Future 50、最具创新公司（Fast Company 等）、最佳雇主等榜单

创始人 Matthew Prince 入选 TIME100 AI 2025 等榜单

Cloudflare 是一家从安全起步、不断向边缘计算和 AI 扩展的创新公司。它让普通网站也能享受企业级防护和加速，对互联网的开放、安全和性能贡献显著

顺带提一嘴

*这个网站被我托管到了Cloudflare*
