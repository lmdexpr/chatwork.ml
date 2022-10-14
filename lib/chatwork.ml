open Eio

let service = "http" (* TODO https *)
let host = "api.chatwork.com"

module Me = struct
  let path = "/v2/me"

  let get token net =
    let request = "GET " ^ path ^ " HTTP/1.1" in

    let headers = [ "Accept: application/json"; "x-chatworktoken: " ^ token ] in
    let headers = String.concat "\r\n" headers in

    let body = "" in

    let request = [ request; headers; ""; body ] in
    let request = String.concat "\r\n" request in

    let f conn =
      let buf = Buffer.create 1000 in
      Flow.(
        copy_string request conn;
        shutdown conn `Send;
        copy conn @@ buffer_sink buf);
      Buffer.contents buf
    in
    Net.with_tcp_connect ~host ~service net f
end
