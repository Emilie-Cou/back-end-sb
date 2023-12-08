import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Comment_DTO } from 'src/shared/dto/comment/comment.dto';
import { CommentEntity } from 'src/shared/entities/comment/comment.entity';
import { Repository } from 'typeorm';

@Injectable()
export class CommentService
{
    constructor( @InjectRepository(CommentEntity) private readonly commentRepo : Repository<CommentEntity>) {}

    async getOne(id : number)
    {
        return await this.commentRepo.findOneBy({id})
    }

    async getAll()
    {
        return await this.commentRepo.find({
            order: {
                id: "DESC",
            },
        })
    }

    async addComment(newComment : Comment_DTO)
    {
        return  await this.commentRepo.save(newComment)
    }

    async updateComment(idComment : number, newComment : Comment_DTO)
    {
        return  await this.commentRepo.update(idComment, newComment)
    }

    async deleteComment(idComment : number)
    {
        return  await this.commentRepo.softDelete(idComment)
    }
}
