FROM python:3.6
WORKDIR /app
COPY sources/ /app
CMD ["python", "-m", "unittest", "test_calc"]
