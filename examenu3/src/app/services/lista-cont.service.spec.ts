import { TestBed } from '@angular/core/testing';

import { ListaContService } from './lista-cont.service';

describe('ListaContService', () => {
  let service: ListaContService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ListaContService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
