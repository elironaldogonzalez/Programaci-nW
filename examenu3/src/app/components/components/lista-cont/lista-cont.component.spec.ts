import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListaContComponent } from './lista-cont.component';

describe('ListaContComponent', () => {
  let component: ListaContComponent;
  let fixture: ComponentFixture<ListaContComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListaContComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListaContComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
