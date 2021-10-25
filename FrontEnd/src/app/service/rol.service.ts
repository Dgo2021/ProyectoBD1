import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class RolService {
  private URL = "http://localhost:8080/rol";
  constructor(private http:HttpClient) { }

  listaRoles(){
    return this.http.get<any>(this.URL+'/all').pipe(catchError(e => 'error'));
  }


}
