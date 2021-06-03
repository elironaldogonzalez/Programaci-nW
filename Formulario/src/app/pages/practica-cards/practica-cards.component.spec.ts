import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PracticaCardsComponent } from './practica-cards.component';

describe('PracticaCardsComponent', () => {
  let component: PracticaCardsComponent;
  let fixture: ComponentFixture<PracticaCardsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PracticaCardsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PracticaCardsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
