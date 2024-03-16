bring containers;
bring cloud;

let workload = new containers.Workload(
  name: "hello",
  image: "nginx",
  port: 80,
  public: true
) as "mysite";

new cloud.Endpoint(workload.publicUrl!) as "nginx server";
