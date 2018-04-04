#!/bin/bash
wat2wasm ./hello.wast -o hello.wasm
primea-annotate ./hello.json ./hello.wasm ./hello.wasm    
