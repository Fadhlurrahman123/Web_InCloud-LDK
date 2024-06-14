# Web---Cloud
gcloud builds submit --tag gcr.io/streamlit-app-426313/streamlit-application  --project=streamlit-app-426313

gcloud run deploy --image gcr.io/streamlit-app-426313/streamlit-application --platform managed  --project=streamlit-app-426313 --allow-unauthenticated