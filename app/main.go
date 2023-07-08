package main

import (
	"net/http"
	"log"
	"fmt"
)

func test(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(200)
	w.Header().Set("Content-Type", "text/html; charset=utf8")
	w.Write([]byte("hello golang web"))
}

func handleRequests() {
	http.hundleFunc("/test", testHandler)
	log.Fatal(http.ListenAndServe(":80", nil))	
}

func main() {
	fmt.Print("Web Server is Running...")
	handleRequests()
}