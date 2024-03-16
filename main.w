bring containers;
bring cloud;

let workload = new containers.Workload(
  name: "hello",
  image: "hasanaburayyan/stupid_app",
  port: 3000,
  public: true
) as "mysite";

let b = new cloud.Bucket();

new cloud.Function(inflight () => {
  b.put("blah.txt", "hello");
}) as "put file";

new cloud.Endpoint(workload.publicUrl!) as "myapp";
