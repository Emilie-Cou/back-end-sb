import { Module } from '@nestjs/common';
import { BlogController } from './_blog.controller';
import { BlogService } from './_blog.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { BlogEntity } from 'src/shared/entities/blog/blog.entity';
import { ClasseEntity } from 'src/shared/entities/classe/classe.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      BlogEntity,
      ClasseEntity
    ])
  ],
  controllers: [BlogController],
  providers: [BlogService]
})
export class BlogModule {}
