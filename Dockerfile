
FROM python:3.8-slim

WORKDIR /app

ADD . /app

RUN pip install --upgrade pip && pip install -r requirements.txt \
    --trusted-host pypi.tuna.tsinghua.edu.cn \
    -i https://pypi.tuna.tsinghua.edu.cn/simple

CMD ["python", "main.py"]