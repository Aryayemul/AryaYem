#Base image
FROM python:3.10-slim

#Set working directory
WORKDIR /app


#Copy requirements file first 
COPY requirement.txt .

#Install dependencies
RUN pip install --no-cache-dir -r requirement.txt

#Copy app files 
COPY . .

#Expose port 800 
EXPOSE 8000

#Run the app using Uvicorn
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","8000"]