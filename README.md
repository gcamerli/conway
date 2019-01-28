# **Conway**

### **Description**

[Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) written in **Rust** and **WebAssembly** from the official book [Rust and WebAssembly](https://rustwasm.github.io/).

### **Toolchain**

+ `rustup`
+ `rustc`
+ `cargo`
+ `wasm-pack`
+ `cargo-generate`
+ `npm`

Follow the [Setup](https://rustwasm.github.io/book/game-of-life/setup.html) guide from the official book.

### **Design**

![glider](https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Glider.svg/220px-Glider.svg.png)

**Infinite Universe**

> Fixed-size, periodic universe, where cells on the edges have neighbors that wrap around to the other side of the universe. Because neighbors wrap around the edges of the universe, gliders can keep running forever.

### **Docker**

Executing the `run.sh` script docker will:

+ build the image from the `Dockerfile`
+ create the bridge network from the `network.sh` script
+ deploy the `npm` version of _Conway's Game of Life_ with `docker-compose`

To see in action the _life_ open up your browser at `172.42.0.42:8080`.

---

_Hack without fear!_

### **Doc**

+ [WebAssembly](https://webassembly.org/)

### **License**

This work is unlicensed under the terms of [Unlicense](http://unlicense.org/).
