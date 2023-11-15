import { Module } from '@nestjs/common';
import { BlogComController } from './_blog-com.controller';
import { BlogComService } from './_blog-com.service';
import { BlogComEntity } from 'src/shared/entities/blog-com/blog-com.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ClasseEntity } from 'src/shared/entities/classe/classe.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      BlogComEntity,
      ClasseEntity
    ])
  ],
  controllers: [BlogComController],
  providers: [BlogComService]
})
export class BlogComModule {}
