bring containers;
bring cloud;

let workload = new containers.Workload(
  name: "hello",
  image: "hasanaburayyan/stupid_app",
  port: 3000,
  public: true
) as "mysite";

new cloud.Function(inflight () => {
  log(workload.publicUrl!);
}) as "get_url";