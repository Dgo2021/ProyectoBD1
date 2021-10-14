import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class AreaService {

  private URL = 'http://localhost:8080/area'
  

  constructor(private http: HttpClient) { 
    

  }
  llenarAreas():Observable<any>{
    return this.http.get<any>(this.URL +'/all').pipe(catchError(e => "error"));

  }
  actualizarService(area:any){
    var httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    }
    return this.http.post<any>(this.URL+'/grabar',area, httpOptions)
  };
 

}
