# 使用一個輕量級的 Nginx 映像作為基礎
FROM nginx:alpine

# 將你的 index.html 檔案複製到 Nginx 的預設網站目錄
COPY index.html /usr/share/nginx/html

# 暴露 80 port
EXPOSE 80

# 啟動 Nginx 伺服器
CMD ["nginx", "-g", "daemon off;"]