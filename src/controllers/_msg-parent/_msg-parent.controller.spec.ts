import { Test, TestingModule } from '@nestjs/testing';
import { MsgParentController } from './_msg-parent.controller';

describe('MsgParentController', () => {
  let controller: MsgParentController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [MsgParentController],
    }).compile();

    controller = module.get<MsgParentController>(MsgParentController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
