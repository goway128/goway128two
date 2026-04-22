---
layout: page
title: 关于
permalink: /about/
icon: fas fa-heart
order: 5
---

<style>
  .about-wrap {
    padding: 1rem 0 3rem;
    max-width: 680px;
    font-family: var(--font-sans, sans-serif);
  }

  /* ── 配色变量 ── */
  .about-wrap {
    --g1: #7c3aed;
    --g2: #e11d75;
    --g3: #a855f7;
    --card-border-opacity: 0.55;
  }
  @media (prefers-color-scheme: light) {
    .about-wrap { --g1: #55CDFC; --g2: #F7A8B8; --g3: #ffffff; --card-border-opacity: 0.7; }
  }
  [data-mode="light"] .about-wrap { --g1: #55CDFC; --g2: #F7A8B8; --g3: #ffffff; --card-border-opacity: 0.7; }
  [data-mode="dark"]  .about-wrap { --g1: #7c3aed; --g2: #e11d75; --g3: #a855f7; --card-border-opacity: 0.55; }

  /* ── hero ── */
  .hero {
    text-align: center;
    padding: 2rem 1rem 1.8rem;
    opacity: 0;
    transform: translateY(24px);
    animation: ab-fadeUp 0.6s ease forwards 0.1s;
  }
  .hero-name {
    font-size: 36px;
    font-weight: 500;
    margin-bottom: 10px;
    background: linear-gradient(90deg, var(--g1), var(--g2), var(--g3), var(--g2), var(--g1));
    background-size: 200% auto;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    color: transparent;
    display: inline-block;
    animation: ab-shimmer 4s linear infinite;
  }
  .hero-bio {
    font-size: 15px;
    color: var(--text-muted-color, #999);
    letter-spacing: 0.04em;
  }

  /* ── card ── */
  .card {
    border-radius: 16px;
    position: relative;
    margin-bottom: 1.4rem;
    padding: 1.3rem 1.5rem;
    background: var(--card-bg, #1e2125);
    opacity: 0;
    transform: translateY(20px);
    z-index: 0;
    overflow: visible;
  }
  .card::before {
    content: '';
    position: absolute;
    inset: -1.5px;
    border-radius: 18px;
    background: linear-gradient(135deg, var(--g1), var(--g2), var(--g3), var(--g2), var(--g1));
    background-size: 300% 300%;
    animation: ab-borderFlow 5s ease infinite;
    opacity: var(--card-border-opacity, 0.55);
    z-index: -1;
  }
  .card::after {
    content: '';
    position: absolute;
    inset: 0;
    border-radius: 16px;
    background: var(--card-bg, #1e2125);
    z-index: -1;
  }
  .card.d1 { animation: ab-fadeUp 0.6s ease forwards 0.25s; }
  .card.d2 { animation: ab-fadeUp 0.6s ease forwards 0.4s; }
  .card.d3 { animation: ab-fadeUp 0.6s ease forwards 0.55s; }

  /* ── section label ── */
  .section-label {
    font-size: 11px;
    font-weight: 500;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    margin-bottom: 12px;
    display: flex;
    align-items: center;
    gap: 6px;
  }
  .section-label span {
    display: inline-block;
    background: linear-gradient(90deg, var(--g1), var(--g2));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    color: transparent;
  }
  .section-label i {
    background: linear-gradient(90deg, var(--g1), var(--g2));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    font-size: 12px;
  }

  /* ── motto ── */
  .motto-text {
    font-size: 14px;
    color: var(--text-muted-color, #999);
    line-height: 1.9;
    font-style: italic;
    padding-left: 4px;
    border-left: 2px solid var(--g2);
  }

  /* ── tags ── */
  .tags { display: flex; flex-wrap: wrap; gap: 8px; }
  .tag {
    padding: 5px 14px 5px 10px;
    border-radius: 999px;
    font-size: 13px;
    font-weight: 500;
    color: var(--text-color, #eee);
    background: var(--card-bg, #1e2125);
    position: relative;
    z-index: 0;
    transition: transform 0.18s ease;
    cursor: default;
    display: flex;
    align-items: center;
    gap: 6px;
  }
  .tag i {
    font-size: 12px;
    background: linear-gradient(135deg, var(--g1), var(--g2));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }
  .tag::before {
    content: '';
    position: absolute;
    inset: -1.5px;
    border-radius: 999px;
    background: linear-gradient(90deg, var(--g1), var(--g2), var(--g3), var(--g1));
    background-size: 200% auto;
    animation: ab-shimmer 3s linear infinite;
    opacity: var(--card-border-opacity, 0.55);
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

  /* ── timeline ── */
  .timeline { position: relative; padding-left: 22px; }
  .timeline::before {
    content: '';
    position: absolute;
    left: 4px; top: 6px; bottom: 6px; width: 2px;
    background: linear-gradient(180deg, var(--g1), var(--g2), var(--g1));
    background-size: 100% 200%;
    animation: ab-borderFlow 3s ease infinite;
    border-radius: 2px;
    opacity: 0.8;
  }
  .tl-item {
    position: relative;
    margin-bottom: 1.4rem;
    padding-left: 14px;
    opacity: 0;
    transform: translateX(-12px);
  }
  .tl-item:last-child { margin-bottom: 0; }
  .tl-item.t1 { animation: ab-fadeRight 0.5s ease forwards 0.7s; }
  .tl-item.t2 { animation: ab-fadeRight 0.5s ease forwards 0.85s; }
  .tl-item.t3 { animation: ab-fadeRight 0.5s ease forwards 1.0s; }
  .tl-item.t4 { animation: ab-fadeRight 0.5s ease forwards 1.15s; }
  .tl-item::before {
    content: '';
    position: absolute;
    left: -17px; top: 4px;
    width: 10px; height: 10px;
    border-radius: 50%;
    background: linear-gradient(135deg, var(--g1), var(--g2));
    box-shadow: 0 0 0 2.5px var(--card-bg, #1e2125), 0 0 0 4px var(--g2);
  }
  .tl-year {
    font-size: 11px;
    font-weight: 500;
    margin-bottom: 3px;
    letter-spacing: 0.06em;
    color: var(--g1);
    display: flex;
    align-items: center;
    gap: 5px;
  }
  .tl-year i { font-size: 10px; opacity: 0.8; }
  .tl-title {
    font-size: 14px;
    font-weight: 500;
    color: var(--text-color, #eee);
    margin-bottom: 3px;
    display: flex;
    align-items: center;
    gap: 7px;
  }
  .tl-title i {
    font-size: 13px;
    background: linear-gradient(135deg, var(--g1), var(--g2));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    flex-shrink: 0;
  }
  .tl-desc {
    font-size: 13px;
    color: var(--text-muted-color, #999);
    line-height: 1.6;
  }

  /* ── typewriter ── */
  .hero-sub {
    font-size: 16px;
    color: var(--text-muted-color, #999);
    letter-spacing: 0.04em;
    height: 1.6em;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 6px;
  }
  .hero-sub .prefix { color: var(--text-muted-color, #999); }
  .hero-sub .typed-word {
    background: linear-gradient(90deg, var(--g1), var(--g2));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    color: transparent;
    display: inline-block;
    font-weight: 500;
    min-width: 4px;
  }
  .hero-sub .cursor {
    display: inline-block;
    width: 2px;
    height: 1.1em;
    background: var(--g2);
    border-radius: 1px;
    animation: ab-blink 0.9s step-end infinite;
    vertical-align: middle;
    margin-left: 1px;
  }
  @keyframes ab-blink {
    0%, 100% { opacity: 1; }
    50%       { opacity: 0; }
  }

  /* ── animations ── */
  @keyframes ab-fadeUp {
    to { opacity: 1; transform: translateY(0); }
  }
  @keyframes ab-fadeRight {
    to { opacity: 1; transform: translateX(0); }
  }
  @keyframes ab-shimmer {
    0%   { background-position: 0% center; }
    100% { background-position: 200% center; }
  }
  @keyframes ab-borderFlow {
    0%   { background-position: 0% 0%; }
    50%  { background-position: 100% 100%; }
    100% { background-position: 0% 0%; }
  }
</style>

<div class="about-wrap">

  <div class="hero">
    <div class="hero-name">白</div>
    <div class="hero-sub">
      <span class="prefix">热爱</span>
      <span class="typed-word" id="ab-typed"></span><span class="cursor"></span>
    </div>
  </div>

  <div class="card d1">
    <div class="section-label">
      <i class="fas fa-quote-left"></i>
      <span>座右铭</span>
    </div>
    <div class="motto-text">
      "Our greatest glory is not in never falling,<br>but in rising every time we fall."
    </div>
  </div>

  <div class="card d2">
    <div class="section-label">
      <i class="fa-solid fa-eye"></i>
      <span>兴趣 &amp; 关注</span>
    </div>
    <div class="tags">
      <span class="tag"><i class="fas fa-music"></i> 音乐</span>
      <span class="tag"><i class="fas fa-tv"></i> 二次元</span>
      <span class="tag"><i class="fas fa-brain"></i> 心理健康</span>
      <span class="tag"><i class="fas fa-capsules"></i> 药学</span>
      <span class="tag"><i class="fas fa-code"></i> 编程</span>
    </div>
  </div>

  <div class="card d3">
    <div class="section-label">
      <i class="fas fa-timeline" style="-webkit-text-fill-color:transparent"></i>
      <i class="fas fa-clock"></i>
      <span>时间线</span>
    </div>
    <div class="timeline">
      <div class="tl-item t1">
        <div class="tl-year"><i class="fas fa-calendar-alt"></i> 2025.08</div>
        <div class="tl-title"><i class="fas fa-globe"></i> 一切的开端</div>
        <div class="tl-desc">第一次了解域名和服务器</div>
      </div>
      <div class="tl-item t2">
        <div class="tl-year"><i class="fas fa-calendar-alt"></i> 2026.01</div>
        <div class="tl-title"><i class="fas fa-pen"></i> 学习</div>
        <div class="tl-desc">学习了建站的知识，准备从GitHub构建</div>
      </div>
      <div class="tl-item t3">
        <div class="tl-year"><i class="fas fa-calendar-alt"></i> 2026.03</div>
        <div class="tl-title"><i class="fa-solid fa-palette"></i> 准备中</div>
        <div class="tl-desc">购买了域名，选择主题</div>
      </div>
      <div class="tl-item t4">
        <div class="tl-year"><i class="fas fa-calendar-alt"></i> 2026.04</div>
        <div class="tl-title"><i class="fa-solid fa-eye"></i> 成功</div>
        <div class="tl-desc">建立了小站</div>
      </div>
      <div class="tl-item t5">
        <div class="tl-year"><i class="fa-solid fa-cloud-arrow-up"></i> 2026.04.22</div>
        <div class="tl-title"><i class="fa-solid fa-eye"></i> 备案（</div>
        <div class="tl-desc">获得萌icp</div>
      </div>
    </div>
  </div>

</div>

<script>
(function(){
  var words = ['研究', '探索',];
  var el = document.getElementById('ab-typed');
  if (!el) return;
  var wi = 0, ci = 0, deleting = false, pause = false;
  var TYPE_SPEED = 120, DEL_SPEED = 70, PAUSE_MS = 1400;

  function tick() {
    var word = words[wi];
    if (pause) { pause = false; setTimeout(tick, PAUSE_MS); return; }
    if (!deleting) {
      el.textContent = word.slice(0, ++ci);
      if (ci === word.length) { pause = true; deleting = true; setTimeout(tick, TYPE_SPEED); return; }
      setTimeout(tick, TYPE_SPEED);
    } else {
      el.textContent = word.slice(0, --ci);
      if (ci === 0) { deleting = false; wi = (wi + 1) % words.length; setTimeout(tick, TYPE_SPEED); return; }
      setTimeout(tick, DEL_SPEED);
    }
  }
  setTimeout(tick, 800);
})();
</script>

