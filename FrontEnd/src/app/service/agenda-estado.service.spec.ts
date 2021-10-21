import { TestBed } from '@angular/core/testing';

import { AgendaEstadoService } from './agenda-estado.service';

describe('AgendaEstadoService', () => {
  let service: AgendaEstadoService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AgendaEstadoService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
