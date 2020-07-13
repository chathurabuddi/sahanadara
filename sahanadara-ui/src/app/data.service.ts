import { ReliefRequest } from './relief-request';
import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpParams } from '@angular/common/http';
import { throwError, Observable } from 'rxjs';
import { retry, catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  private SAHANADARA_API_SERVER = 'http://localhost:8080';

  constructor(private httpClient: HttpClient) { }

  handleError(error: HttpErrorResponse): Observable<never> {
    let errorMessage = 'Unknown error!';
    if (error.error instanceof ErrorEvent) {
      errorMessage = `Error: ${error.error.message}`;
    } else {
      errorMessage = `Error Code: ${error.status}\nMessage: ${error.message}`;
    }
    window.alert(errorMessage);
    return throwError(errorMessage);
  }

  public ListReliefRequests(): Observable<ReliefRequest[]>{
    const options = { params: new HttpParams({fromString: 'completed=false'}) };
    return this.httpClient
      .get<ReliefRequest[]>(this.SAHANADARA_API_SERVER + '/relief-request', options)
      .pipe(retry(3), catchError(this.handleError));
  }
}
