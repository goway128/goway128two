---
layout: music
title: 音乐
icon: fas fa-music
order: 6
permalink: /music/
---

<style>
html, body {
  overflow-x: hidden !important;
  max-width: 100vw;
}

.music-page {
  width: 100%;
  max-width: 820px;
  margin: 0 auto;
  padding: 16px 0 120px;
  box-sizing: border-box;
}

.music-title-area {
  text-align: center;
  margin-bottom: 28px;
  animation: musicFadeUp 0.7s cubic-bezier(0.22, 1, 0.36, 1) both;
}

.music-title-area h1 {
  margin: 0 0 10px;
  padding: 0 !important;
  border: none !important;
  font-size: clamp(2.1rem, 7vw, 3.4rem);
  line-height: 1.1;
  font-weight: 800;
  letter-spacing: -0.04em;
  background: linear-gradient(135deg, #f472b6, #c084fc);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.music-title-area p {
  margin: 0;
  font-size: 0.92rem;
  line-height: 1.8;
  color: rgba(128,128,128,0.76);
}

.music-search-wrap {
  width: 100%;
  margin-bottom: 22px;
  animation: musicFadeUp 0.7s cubic-bezier(0.22, 1, 0.36, 1) 0.08s both;
}

#musicSearch {
  width: 100%;
  height: 56px;
  border: 1.5px solid rgba(128,128,128,0.22);
  border-radius: 999px;
  outline: none;
  padding: 0 24px;
  box-sizing: border-box;
  font-size: 0.96rem;
  color: inherit;
  background: rgba(255,255,255,0.72);
  backdrop-filter: blur(18px);
  -webkit-backdrop-filter: blur(18px);
  box-shadow: 0 12px 34px rgba(244,114,182,0.10), 0 6px 22px rgba(192,132,252,0.08);
  transition: border-color 0.2s ease, box-shadow 0.2s ease, background 0.2s ease;
}

#musicSearch:focus {
  border-color: rgba(249,168,201,0.78);
  box-shadow: 0 16px 38px rgba(244,114,182,0.18), 0 8px 28px rgba(192,132,252,0.13);
}

#musicSearch::placeholder {
  color: rgba(128,128,128,0.72);
}

.music-list {
  display: flex;
  flex-direction: column;
  gap: 12px;
  animation: musicFadeUp 0.7s cubic-bezier(0.22, 1, 0.36, 1) 0.16s both;
}

.music-item {
  width: 100%;
  min-height: 82px;
  border-radius: 26px;
  padding: 14px 16px;
  box-sizing: border-box;
  display: flex;
  align-items: center;
  gap: 14px;
  cursor: pointer;
  background: rgba(255,255,255,0.08);
  border: 1.5px solid rgba(128,128,128,0.16);
  backdrop-filter: blur(18px);
  -webkit-backdrop-filter: blur(18px);
  box-shadow: 0 10px 30px rgba(0,0,0,0.06);
  transition: transform 0.2s ease, border-color 0.2s ease, box-shadow 0.2s ease, background 0.2s ease;
}

.music-item:hover {
  transform: translateY(-2px);
  border-color: rgba(249,168,201,0.55);
  background: rgba(249,168,201,0.08);
  box-shadow: 0 14px 34px rgba(244,114,182,0.13), 0 8px 24px rgba(192,132,252,0.10);
}

.music-item.active {
  border-color: rgba(244,114,182,0.72);
  background: linear-gradient(135deg, rgba(244,114,182,0.16), rgba(192,132,252,0.14));
}

.music-index {
  width: 40px;
  height: 40px;
  border-radius: 999px;
  flex-shrink: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 0.82rem;
  font-weight: 800;
  color: #fff;
  background: linear-gradient(135deg, #f472b6, #c084fc);
  box-shadow: 0 8px 20px rgba(244,114,182,0.26);
}

.music-info {
  flex: 1;
  min-width: 0;
}

.music-name {
  font-size: 0.96rem;
  font-weight: 800;
  line-height: 1.3;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.music-author {
  margin-top: 5px;
  font-size: 0.82rem;
  color: rgba(128,128,128,0.78);
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.music-actions {
  display: flex;
  align-items: center;
  gap: 8px;
  flex-shrink: 0;
}

.music-play-label {
  font-size: 0.78rem;
  color: rgba(128,128,128,0.72);
}

.music-download {
  width: 38px;
  height: 38px;
  border-radius: 999px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  color: #fff !important;
  background: linear-gradient(135deg, #f472b6, #c084fc);
  box-shadow: 0 8px 20px rgba(244,114,182,0.24);
  text-decoration: none !important;
  border: none;
  outline: none;
  transition: transform 0.16s ease, box-shadow 0.16s ease;
}

.music-download:hover {
  transform: scale(1.06);
  box-shadow: 0 12px 28px rgba(244,114,182,0.34);
}

.music-download:active {
  transform: scale(0.94);
}

.music-download svg {
  width: 17px;
  height: 17px;
  display: block;
}

.music-empty {
  display: none;
  text-align: center;
  padding: 40px 12px;
  color: rgba(128,128,128,0.72);
  font-size: 0.92rem;
}

.music-player-bar {
  position: fixed;
  left: 50%;
  bottom: 18px;
  transform: translateX(-50%);
  z-index: 999;
  width: calc(100% - 28px);
  max-width: 820px;
  border-radius: 30px;
  padding: 14px 16px;
  box-sizing: border-box;
  background: rgba(255,255,255,0.78);
  border: 1.5px solid rgba(255,255,255,0.36);
  backdrop-filter: blur(22px);
  -webkit-backdrop-filter: blur(22px);
  box-shadow: 0 18px 46px rgba(0,0,0,0.14), 0 8px 26px rgba(
