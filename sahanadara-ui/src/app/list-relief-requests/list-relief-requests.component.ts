import { ReliefRequest } from './../relief-request';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { DataService } from '../data.service';
import { animate, state, style, transition, trigger } from '@angular/animations';
import { takeUntil } from 'rxjs/operators';
import { Subject } from 'rxjs';

@Component({
  selector: 'app-list-relief-requests',
  templateUrl: './list-relief-requests.component.html',
  styleUrls: ['./list-relief-requests.component.css'],
  animations: [
    trigger('detailExpand', [
      state('collapsed', style({ height: '0px', minHeight: '0', visibility: 'hidden' })),
      state('expanded', style({ height: '*', visibility: 'visible' })),
      transition('expanded <=> collapsed', animate('225ms cubic-bezier(0.4, 0.0, 0.2, 1)')),
    ]),
  ]
})
export class ListReliefRequestsComponent implements OnInit, OnDestroy {

  destroy$: Subject<boolean> = new Subject<boolean>();
  reliefRequests: ReliefRequest[] = [];
  expandedElement: any;
  displayedColumns = ['selection', 'title', 'associatedIncident', 'location', 'user', 'contact'];
  isExpansionDetailRow = (i: number, row: any) => row.hasOwnProperty('detailRow');

  constructor(private dataService: DataService) { }

  ngOnInit(): void {
    this.dataService.ListReliefRequests().pipe(takeUntil(this.destroy$)).subscribe((data: ReliefRequest[]) => {
      const rows = [];
      data.forEach(element => rows.push(element, { detailRow: true, element }));
      this.reliefRequests = rows;
    });
  }

  ngOnDestroy(): void {
    this.destroy$.next(true);
    this.destroy$.unsubscribe();
  }

}
