FROM nginx:alpine

# Railway 預設會給 PORT，先給個 fallback 值
ENV PORT=8080

# 放 nginx.conf.template 進去，讓 envsubst 轉換 ${PORT}
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

CMD ["sh","-c","envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
