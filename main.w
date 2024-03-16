bring containers;
bring cloud;

let workload = new containers.Workload(
  name: "hello",
  image: "grafana/grafana",
  port: 3000,
  public: true
) as "mysite";

new cloud.Endpoint(workload.publicUrl!);