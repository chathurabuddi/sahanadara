import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListReliefRequestsComponent } from './list-relief-requests.component';

describe('ListReliefRequestsComponent', () => {
  let component: ListReliefRequestsComponent;
  let fixture: ComponentFixture<ListReliefRequestsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListReliefRequestsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListReliefRequestsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
