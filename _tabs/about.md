---
layout: page
title: 关于
permalink: /about/
icon: fa-brands fa-codepen
order: 5
---

<style>
  * { box-sizing: border-box; margin: 0; padding: 0; }

  .about-wrap {
    padding: 1rem 0 3rem;
    max-width: 680px;
    font-family: var(--font-sans, sans-serif);
  }

  /* hero */
  .hero {
    text-align: center;
    padding: 2rem 1rem 2rem;
    opacity: 0;
    transform: translateY(24px);
    animation: fadeUp 0.6s ease forwards 0.1s;
  }
  .hero-name {
    font-size: 36px;
    font-weight: 500;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    background-size: 200% auto;
    animation: shimmer 4s linear infinite;
    margin-bottom: 10px;
  }
  .hero-bio {
    font-size: 15px;
    color: var(--text-muted-color, #aaa);
    letter-spacing: 0.04em;
  }

  /* card */
  .card {
    border-radius: 16px;
    position: relative;
    margin-bottom: 1.4rem;
    padding: 1.3rem 1.5rem;
    background: var(--card-bg, #1e2125);
    opacity: 0;
    transform: translateY(20px);
    z-index: 0;
  }
  .card::before {
    content: '';
    position: absolute;
    inset: -1.5px;
    border-radius: 18px;
    background-size: 300% 300%;
    animation: borderFlow 5s ease infinite;
    z-index: -1;
  }
  .card.d1 { animation: fadeUp 0.6s ease forwards 0.25s; }
  .card.d2 { animation: fadeUp 0.6s ease forwards 0.4s; }
  .card.d3 { animation: fadeUp 0.6s ease forwards 0.55s; }

  .section-label {
    font-size: 11px;
    font-weight: 500;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    margin-bottom: 12px;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }

  /* motto */
  .motto-text {
    font-size: 14px;
    color: var(--text-muted-color, #aaa);
    line-height: 1.9;
    font-style: italic;
  }

  /* tags */
  .tags { display: flex; flex-wrap: wrap; gap: 8px; }
  .tag {
    padding: 5px 16px;
    border-radius: 999px;
    font-size: 13px;
    font-weight: 500;
    color: var(--text-color, #eee);
    background: rgba(255,255,255,0.05);
    position: relative;
    z-index: 0;
    transition: transform 0.18s ease;
    cursor: default;
  }
  .tag::before {
    content: '';
    position: absolute;
    inset: -1px;
    border-radius: 999px;
    background-size: 200% auto;
    animation: shimmer 3s linear infinite;
    z-index: -1;
  }
  .tag::after {
    content: '';
    position: absolute;
    inset: 0;
    border-radius: 999px;
    background: var(--card-bg, #1e2125);
    z-index: -1;
  }
  .tag:hover { transform: translateY(-2px); }

  /* timeline */
  .timeline { position: relative; padding-left: 20px; }
  .timeline::before {
    content: '';
    position: absolute;
    left: 4px; top: 6px; bottom: 6px; width: 2px;
    background-size: 100% 200%;
    animation: borderFlow 3s ease infinite;
    border-radius: 2px;
  }
  .tl-item {
    position: relative;
    margin-bottom: 1.4rem;
    padding-left: 16px;
    opacity: 0;
    transform: translateX(-12px);
  }
  .tl-item:last-child { margin-bottom: 0; }
  .tl-item.t1 { animation: fadeRight 0.5s ease forwards 0.7s; }
  .tl-item.t2 { animation: fadeRight 0.5s ease forwards 0.85s; }
  .tl-item.t3 { animation: fadeRight 0.5s ease forwards 1.0s; }
  .tl-item.t4 { animation: fadeRight 0.5s ease forwards 1.15s; }
  .tl-item::before {
    content: '';
    position: absolute;
    left: -15px; top: 5px;
    width: 9px; height: 9px;
    border-radius: 50%;
  }
  .tl-title {
    font-size: 14px;
    font-weight: 500;
    color: var(--text-color, #eee);
    margin-bottom: 3px;
  }
  .tl-year {
    font-size: 11px;
    font-weight: 500;
    margin-bottom: 3px;
    letter-spacing: 0.06em;
  }
  .tl-desc {
    font-size: 13px;
    color: var(--text-muted-color, #aaa);
    line-height: 1.6;
  }

  /* ── 亮色模式：Trans 旗配色（蓝-粉-白）── */
  @media (prefers-color-scheme: light) { .about-wrap { --g1: #55CDFC; --g2: #F7A8B8; --g3: #ffffff; } }
  [data-mode="light"] .about-wrap    { --g1: #55CDFC; --g2: #F7A8B8; --g3: #ffffff; }

  /* ── 暗色模式：紫色到粉色 ── */
  @media (prefers-color-scheme: dark)  { .about-wrap { --g1: #a855f7; --g2: #f472b6; --g3: #c084fc; } }
  [data-mode="dark"] .about-wrap     { --g1: #a855f7; --g2: #f472b6; --g3: #c084fc; }

  /* 默认（没有显式 data-mode 时跟系统走，给一个保底暗色） */
  .about-wrap { --g1: #a855f7; --g2: #f472b6; --g3: #c084fc; }

  .hero-name {
    background: linear-gradient(90deg, var(--g1), var(--g2), var(--g3), var(--g2), var(--g1));
  }
  .card::before {
    background: linear-gradient(135deg, var(--g1), var(--g2), var(--g3), var(--g2), var(--g1));
  }
  .section-label {
    background: linear-gradient(90deg, var(--g1), var(--g2));
  }
  .tag::before {
    background: linear-gradient(90deg, var(--g1), var(--g2), var(--g3), var(--g1));
  }
  .timeline::before {
    background: linear-gradient(180deg, var(--g1), var(--g2), var(--g1));
  }
  .tl-item::before {
    background: linear-gradient(135deg, var(--g1), var(--g2));
    box-shadow: 0 0 0 2.5px var(--card-bg, #1e2125), 0 0 0 4px var(--g2);
  }
  .tl-year { color: var(--g1); }

  /* ── 亮色下年份用深一点的蓝，否则太浅 ── */
  @media (prefers-color-scheme: light) { .tl-year { color: #2a9ec5; } }
  [data-mode="light"] .tl-year { color: #2a9ec5; }

  /* animations */
  @keyframes fadeUp {
    to { opacity: 1; transform: translateY(0); }
  }
  @keyframes fadeRight {
    to { opacity: 1; transform: translateX(0); }
  }
  @keyframes shimmer {
    0%   { background-position: 0% center; }
    100% { background-position: 200% center; }
  }
  @keyframes borderFlow {
    0%   { background-position: 0% 0%; }
    50%  { background-position: 100% 100%; }
    100% { background-position: 0% 0%; }
  }
</style>

<div class="about-wrap">

  <div class="hero">
    <div class="hero-name">白</div>
    <div class="hero-bio">一个普通的人类</div>
  </div>

  <div class="card d1">
    <div class="section-label">一句话</div>
    <div class="motto-text">
      "Our greatest glory is not in never falling,<br>but in rising every time we fall."
    </div>
  </div>

  <div class="card d2">
    <div class="section-label">兴趣 &amp; 关注</div>
    <div class="tags">
      <span class="tag">🎵 音乐</span>
      <span class="tag">✨ 二次元</span>
      <span class="tag">🧠 心理健康</span>
      <span class="tag">💊 药学</span>
      <span class="tag">💻 编程</span>
    </div>
  </div>

  <div class="card d3">
    <div class="section-label">时间线</div>
    <div class="timeline">
      <div class="tl-item t1">
        <div class="tl-year">2025</div>
        <div class="tl-title">了解建站</div>
        <div class="tl-desc">小小的我第一次知道域名和服务器</div>
      </div>
      <div class="tl-item t2">
        <div class="tl-year">2026</div>
        <div class="tl-title">一切的开端</div>
        <div class="tl-desc">开始搭建</div>
      </div>
      <div class="tl-item t3">
        <div class="tl-year">2026</div>
        <div class="tl-title">正式版白の小站建成</div>
        <div class="tl-desc">发现了Chirpy-star这个项目，重建</div>
      </div>
      <div class="tl-item t4">
        <div class="tl-year">不知道</div>
        <div class="tl-title">后续美化</div>
        <div class="tl-desc">这个来日方长吧</div>
      </div>
    </div>
  </div>

</div>
