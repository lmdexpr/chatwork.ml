open Eio

let service = "http" (* TODO https *)
let host = "api.chatwork.com"

module Me = struct
  let path = "/v2/me"

  let get token net =
    let request = "GET " ^ path ^ " HTTP/1.1" in
    let headers = [ "Accept: application/json"; "x-chatworktoken: " ^ token; ] in
    let headers = String.concat "\r\n" headers in
    let body = "" in
    Net.with_tcp_connect ~host ~service net @@ fun conn ->
      let req = String.concat "\r\n" [ request; headers; body ] in
      let buf = Buffer.create 1000 in
      Flow.(
        copy_string req conn;
        shutdown conn `Send;
        copy conn @@ buffer_sink buf
      );
      Buffer.contents buf
end
