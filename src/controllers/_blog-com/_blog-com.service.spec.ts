import { Test, TestingModule } from '@nestjs/testing';
import { BlogComService } from './_blog-com.service';

describe('BlogComService', () => {
  let service: BlogComService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [BlogComService],
    }).compile();

    service = module.get<BlogComService>(BlogComService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
