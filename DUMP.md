# Dumping into JSON

### Rationale

Since C does not have reflection, it can be difficult to programmatically dump the memory state for various types in a reliable manner. We solve this problem with a tool called `ddump-c` (see its documentation at `iceberg/src/bin/ddump-c.rs`).

Basically, this tool takes the LLVM IR of the target C program as input (which contains the type definitions), and outputs **boilerplace C dumper functions for specified types in the IR**, thus automating the dumping process. This tool can handle complex cases like recursive data structures, variable length objects, and polymorphism based on function pointers. 

Running this tool produces a `dump.h` header file, which is then used by the modified `bind` code below to invoke dumping at its entry function.

```bash
# Produces `dump.h`
cargo run --bin ddump-c  --release test/bind/dump.in test/bind/dump.h %struct.ns_client.6057 %struct.dns_rbtdb %struct.bdb %struct.dns_rdataset.rdlist
```

### Modified Sections

* `lib/ns/query.c` now includes `dump.h`, and has a small header at the start of `ns_query_start()` (the entry function):
```c
f = fopen("dump.txt", "w");
assert(f != NULL);

// Prepare more free rdatalist and rdata
dns_rdatalist_t *rdatalist[10] = {0};
dns_rdata_t *rdata[10] = {0};
for (int i=0;i<10;i++) {
    dns_message_gettemprdatalist(client->message, &rdatalist[i]);
    dns_message_gettemprdata(client->message, &rdata[i]);
    
}
for (int i=0;i<10;i++) {
    dns_message_puttemprdatalist(client->message, &rdatalist[i]);
    dns_message_puttemprdata(client->message, &rdata[i]);
}

dump_struct_ns_client_6057(client, 1);

dns_zt_t *zt = rcu_dereference(client->view->zonetable);
dns_zt_apply(zt, false, NULL, &zone_dump, NULL);
fclose(f);
printf("[dump] done\n");
```

### Dumping

At the project root (`bind9/`):
```bash
docker run -v $(pwd):/app -it --platform linux/amd64 ubuntu:22.04

# In docker
apt update && apt install dnsutils -y       # for `dig`
mkdir /etc/bind
mkdir /var/cache/bind

# In docker
./zone.sh Simple    # For the Simple category (same goes for Complex/Real)
# Outside docker 
mv Zones/json/* ../iceberg/test/bind/json/Simple/   
```
