# network-pinger.sh

A Bash script that continuously pings a host and logs each response with a timestamp.

## What it does

This script is useful for monitoring network connectivity and latency to a given host. It wraps the `ping` command and adds timestamps to each line, making it easier to analyze connection stability and downtime.

## How it works

- Takes a host (domain or IP) as an argument.
- Starts pinging the host.
- Each ping response is prepended with the current date and time.
- Press `Ctrl+C` to stop the script.

## Usage

```bash
./network-pinger.sh <host>
```

Example:

```bash
./network-pinger.sh google.com
```

Sample output:

```
Pinging google.com. Press Ctrl+C to stop.
Tue Aug  5 13:18:14 IST 2025: 64 bytes from 142.250.193.206: icmp_seq=1 ttl=115 time=8.13 ms
Tue Aug  5 13:18:15 IST 2025: 64 bytes from 142.250.193.206: icmp_seq=2 ttl=115 time=7.92 ms
...
```

## Requirements

- Bash
- `ping` utility (available on most systems)

## Installation (Optional)

To make it globally accessible:

```bash
chmod +x network-pinger.sh
mv network-pinger.sh /usr/local/bin/network-pinger
```

Then you can run:

```bash
network-pinger example.com
```

## Notes

- Output is printed to the terminal. You can redirect it to a file if needed:

```bash
./network-pinger.sh example.com >> ping-log.txt
```
