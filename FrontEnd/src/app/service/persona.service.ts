import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class PersonaService {
 private URL = "http://localhost:8080/persona";
  constructor(private http: HttpClient) { }


  buscarPersona(identificacion:any){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+"/identi/"+identificacion,httpOptions);

  }
  listaPersonas(){
    return this.http.get<any>(this.URL+"/all").pipe(catchError(e => 'error'));
  }



}
