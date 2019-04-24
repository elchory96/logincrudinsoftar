import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class RequestsService {

  baseUrl = "http://localhost:8000/api/";
  token: any;
  httpOptions;
  constructor(private http: HttpClient) {
  }
  globalRequest(json, url) {
    this.httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json',
        'Access-Control-Allow-Origin': '*',
        'Authorization': 'Bearer '+this.token
      })
    };
    let request = this.http.post(this.baseUrl + url, json, this.httpOptions);
    return request;
  }
  getToken(token) {
    this.token = token;
  }
}
