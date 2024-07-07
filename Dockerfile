FROM python

COPY DockingFASTAPI/requirements.txt .
RUN apk add --no-cache cmake

RUN pip install vboxapi
RUN pip install  gcc g++ 
RUN pip install --no-cache-dir -r requirements.txt
CMD ["uvicorn", "main2.py", "--host", "0.0.0.0", "--port", "80"]

 