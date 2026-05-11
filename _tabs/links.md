---
layout: defult
title: 常用链接
permalink: /links/
order: 6                  
icon: fa-solid fa-link  
---

<style>
@keyframes friendSlideIn {
  from { opacity: 0; transform: translateY(24px); }
  to   { opacity: 1; transform: translateY(0); }
}
</style>

<div style="display:flex;flex-direction:column;gap:14px;max-width:680px;margin:2rem 0;padding:0;">

  <a href="https://mtf.wiki/" target="_blank" rel="noopener"
    style="display:flex;align-items:center;gap:16px;padding:18px 20px;border-radius:16px;border:1.5px solid rgba(128,128,128,0.18);background:rgba(128,128,128,0.06);backdrop-filter:blur(8px);text-decoration:none!important;transition:all 0.25s;opacity:0;animation:friendSlideIn 0.5s ease forwards;animation-delay:0.05s;"
    onmouseover="this.style.borderColor='#f9a8c9';this.style.background='rgba(249,168,201,0.08)';this.style.transform='translateY(-2px)';this.style.boxShadow='0 8px 24px rgba(0,0,0,0.1)';"
    onmouseout="this.style.borderColor='rgba(128,128,128,0.18)';this.style.background='rgba(128,128,128,0.06)';this.style.transform='';this.style.boxShadow='';">
    <img src="https://img.life-white.uk/file/AgACAgQAAyEGAATrQHCPAAMKagHpQA68TWxTMsMRPgfLfngkUNAAAloOaxvucBFQvIlKwtjAhNcBAAMCAAN5AAM7BA.jpg" alt="" style="width:56px;height:56px;border-radius:50%;object-fit:cover;flex-shrink:0;">
    <div style="min-width:0;">
      <div style="font-size:1rem;font-weight:700;margin-bottom:4px;"mtfwiki</div>
      <div style="font-size:0.85rem;opacity:0.6;line-height:1.5;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden;"></div>
    </div>
  </a>

  <!-- 添加更多友链：复制上面 <a>…</a> 块，animation-delay 每次加 0.07s -->

</div>
