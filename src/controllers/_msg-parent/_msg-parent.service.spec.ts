import { Test, TestingModule } from '@nestjs/testing';
import { MsgParentService } from './_msg-parent.service';

describe('MsgParentService', () => {
  let service: MsgParentService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [MsgParentService],
    }).compile();

    service = module.get<MsgParentService>(MsgParentService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
