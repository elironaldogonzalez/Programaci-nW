import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AnadirContComponent } from './anadir-cont.component';

describe('AnadirContComponent', () => {
  let component: AnadirContComponent;
  let fixture: ComponentFixture<AnadirContComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AnadirContComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AnadirContComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
