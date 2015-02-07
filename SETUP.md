# Crashlytics
This project uses [Crashlytics](https://crashlytics.com) for crashes and error reporting. To be able to use this service, you will have to add `crashlytics.properties` file to **app** module. The properties file should look something like the following:

```
apiSecret=your-crashlytics-api-secret
apiKey=your-crashlytics-api-key
```

Make sure not to commit the file to public code repositories. If you need access to the main project's `crashlytics.properties` file, please contact the project admin.