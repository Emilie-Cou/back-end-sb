import { Module } from '@nestjs/common';
import { CommentController } from './_comment.controller';
import { CommentService } from './_comment.service';
import { CommentEntity } from 'src/shared/entities/comment/comment.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      CommentEntity
    ])
  ],
  controllers: [CommentController],
  providers: [CommentService]
})
export class CommentModule {}
