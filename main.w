bring "./workload.sim.w" as workloads;
bring cloud;

let workload = new workloads.Workload_sim(
  name: "hello",
  image: "factoriotools/factorio",
  port: 27015,
  public: true
) as "mysite";

new cloud.Endpoint(workload.publicUrl!);