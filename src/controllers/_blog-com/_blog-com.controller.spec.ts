import { Test, TestingModule } from '@nestjs/testing';
import { BlogComController } from './_blog-com.controller';

describe('BlogComController', () => {
  let controller: BlogComController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [BlogComController],
    }).compile();

    controller = module.get<BlogComController>(BlogComController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
