# Sample deployment using Helm

## Building the image (optional)
An image with a simple web application is already published in my DockerHub repository. If you want to create your own image use the commands:
```
docker build -t <your_username>/<your-repo> .
docker push <your_username>/<your-repo>
```

## Deploying the application
To deploy the application with the default values (`values.yaml`) in a new namespace `helm-sample`, run:
```
helm install helm-sample charts/helm-sample --namespace helm-sample --create-namespace
```

If you want to deploy your own image, you can change the parameter in `values.yaml` or set it in the command line to override the default value:
```
helm install helm-sample charts/helm-sample --namespace helm-sample --create-namespace --set image.repository=<your_username>/<your-repo>
```

Testing the application:
```
curl -H "Host: webapp.localhost" localhost
Hello world!
```

You can list all the releases deployed with:
```
helm list -A
```


Remove the deployment with:
```
helm uninstall helm-sample -n helm-sample
```

