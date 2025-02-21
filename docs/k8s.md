# Kubernetess

This section discuss matters related to Kubernetes.

## What is Kubernetes?

Kubernetes (often abbreviated as K8s) is an open-source system for automating deployment, scaling, and management of containerized applications.  Think of it as an orchestrator for containers.  It takes care of things like:   

* **Scheduling:** Deciding where your containers run.
* **Scaling:** Increasing or decreasing the number of running containers.
* **Service Discovery:** How your applications find each other.
* **Load Balancing:** Distributing traffic across your containers.
* **Rolling Updates:** Updating your application with minimal downtime.
* **Self-Healing:** Restarting failed containers.

## Basic Workflow:

1. Create a Deployment: You define the desired state of your application (e.g., how many replicas of your pod should run, what container image to use).
2. Kubernetes Schedules Pods: Kubernetes places the pods onto the nodes based on resource availability and other factors.
3. Access the Application: You create a Service to expose your application.
Kubernetes Manages the Application: Kubernetes continuously monitors the state of your application and makes adjustments as needed (e.g., restarting failed pods, scaling up or down).

## Example: Deploying a Simple Web Application

Let's imagine you have a simple web application packaged in a Docker container called my-web-app:v1.

**STEP 1:** Deployment YAML: You would create a YAML file (e.g., deployment.yaml) that defines the deployment:

```YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-web-app
spec:
  replicas: 3 # Run 3 replicas of the pod
  selector:
    matchLabels:
      app: my-web-app
  template:
    metadata:
      labels:
        app: my-web-app
    spec:
      containers:
      - name: my-web-app
        image: my-web-app:v1
        ports:
        - containerPort: 8080 # The port your application listens on
```

**STEP 2:** Apply the Deployment: You would use the kubectl apply -f deployment.yaml command to create the deployment in your Kubernetes cluster.

**STEP 3:** Service YAML:  You'd create a service to expose the application (e.g., service.yaml):

```YAML
apiVersion: v1
kind: Service
metadata:
  name: my-web-app-service
spec:
  selector:
    app: my-web-app
  ports:
  - protocol: TCP
    port: 80 # The port you access the service on
    targetPort: 8080 # The port the container listens on
  type: LoadBalancer # Expose the service externally (if supported by your cluster)
```

**STEP 4:** Apply the Service: kubectl apply -f service.yaml

## Helm

Think of Helm like "apt" or "yum" for Linux, but for Kubernetes. It allows you to easily install, update, and manage applications on your Kubernetes cluster.

Essentially, Helm helps to:

* Automate the deployment of applications.
* Reduce the complexity of managing Kubernetes manifests.
* Provide a way to share and reuse Kubernetes applications.

### Helm Charts

A Helm chart is essentially a collection of files organized in a specific way that describes a set of Kubernetes resources. 

A Helm chart resides in a directory, and that directory's name is the chart's name. Inside that directory, you'll generally find these core files and directories:

* `Chart.yaml`:
    * This is a required file that contains metadata about the chart, such as its name, version, and description.   
    * It provides essential information for Helm to manage the chart.
    * This file defines essential chart metadata.   
    * Key fields include:
        * `apiVersion`: The Helm API version.
        * `name`: The chart's name.
        * `version`: The chart's version.
        * `description`: A brief description of the chart.
        * `dependencies`: A list of dependent charts. 
* `values.yaml`:
    * This file holds the default configuration values for the chart.   
    * Users can override these values during installation or upgrade to customize the deployment.
```YAML
    replicaCount: 3
    image:
      repository: nginx
      tag: stable
      pullPolicy: IfNotPresent
    service:
      type: ClusterIP
      port: 80 
```
* `templates/` directory:
    * This directory contains the Kubernetes manifest files (YAML files) that define the resources to be deployed.   
    * These files often use Go templating to allow for dynamic configuration based on the values provided in values.yaml.
    * Inside the templates directory you will often find files such as:
        * `deployment.yaml`
        * `service.yaml`
        * `ingress.yaml`
        * `configmap.yaml`
        * `secret.yaml`
        * `_helpers.tpl`: This file contains template helpers that can be reused throughout the templates.
        * `NOTES.txt`: This file contains notes that are displayed to the user after the chart is installed.
    * Kubernetes manifest files are written here, and Helm's templating engine processes them -- [The Chart Template Developer's Guide](https://helm.sh/docs/chart_template_guide/).   
    * Go templating allows you to:
        * Inject values from values.yaml.
        * Use conditional logic.
        * Iterate over lists.
    * For example in a deployment.yaml file you might see.
    * `replicas: {{ .Values.replicaCount }}`
    * This will inject the replica count from the values.yaml file.
* `charts/` directory (optional):
    * This directory is used to store dependent charts (subcharts).   
    * If your chart relies on other charts, you can include them here.


### Releases

A release is an instance of a chart running in a Kubernetes cluster. Every time you install a chart, you create a release. This allows you to have multiple instances of the same application running with different configurations.

### Repositories

Helm charts are stored in repositories, which are like online libraries. You can find and download pre-built charts from public repositories or create your own private ones.


## References

 * [Kubernetes Components](https://kubernetes.io/docs/concepts/overview/components/)
    * [The Kubernetes API](https://kubernetes.io/docs/concepts/overview/kubernetes-api/)
    * [Working with Kubernetes Objects](https://kubernetes.io/docs/concepts/overview/working-with-objects/)
    * [Cluster Architecture](https://kubernetes.io/docs/concepts/architecture/)
* [Helm](https://www.redhat.com/en/topics/devops/what-is-helm)
    * [Secure Helm: Kubernetes Deployment Best Practices](https://www.plural.sh/blog/helm-chart)
