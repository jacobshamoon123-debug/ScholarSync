FROM python:3.13-slim
WORKDIR /app
COPY ScholarSyncApp_BUILD_282.zip /tmp/ScholarSyncApp_BUILD_282.zip
RUN python -m zipfile -e /tmp/ScholarSyncApp_BUILD_282.zip /app && rm /tmp/ScholarSyncApp_BUILD_282.zip
ENV PYTHONUNBUFFERED=1
ENV SCHOLARSYNC_PRODUCTION=1
CMD ["python", "server.py", "--no-browser"]
