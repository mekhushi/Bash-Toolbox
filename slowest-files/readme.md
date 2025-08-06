# slowest-file.sh

A handy Bash script to identify the **largest frontend files** in your project directory — which are usually the **slowest to load** for users.

##  What It Does

- Recursively scans for `.js`, `.css`, and `.html` files.
- Measures their sizes in kilobytes (KB).
- Sorts them in descending order (largest = slowest).
- Outputs the **top 10 largest files** — ideal for performance audits.

##  Usage

```bash
./slowest-file.sh
```

### Sample Output

```
Analyzing file sizes in KB:
1024    ./dist/app.bundle.js
768     ./public/assets/styles.css
512     ./src/pages/index.html
...
```

## Requirements

No dependencies. It uses standard Unix commands:
- `find`
- `du`
- `sort`
- `head`

 Works on **Linux**, **macOS**, and **WSL**.

## 🛠 Installation (Optional)

Make it globally accessible:

```bash
chmod +x slowest-file.sh
mv slowest-file.sh /usr/local/bin/slowest-file
```

Then run with:

```bash
slowest-file
```

##  Customization

- To check other file types, edit the `-regex` part:
  ```bash
  find . -type f -regex ".*\.\(js\|css\|html\|json\|svg\)"
  ```
- To increase results: change `head -n 10` to `head -n 20`

##  Why Use This?

Front-end performance is critical. Large `.js` and `.css` files slow down page loads, especially on mobile or slow networks. Use this script during development or deployment audits.

---

Made with `bash` for fast feedback 
