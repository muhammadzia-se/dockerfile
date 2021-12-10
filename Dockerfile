# use a node base image
FROM node:14-alpine

# set maintainer
LABEL maintainer "mzia87@gmail.com"

# set a health check
# HEALTHCHECK --interval=5s \
#             --timeout=5s \
#             CMD curl -f http://127.0.0.1:8000 || exit 1

CMD ["npm" "start"]
# tell docker what port to expose
EXPOSE 8000
