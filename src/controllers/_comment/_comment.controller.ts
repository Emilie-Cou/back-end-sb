import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, ValidationPipe } from '@nestjs/common';
import { CommentService } from './_comment.service';
import { Comment_DTO } from 'src/shared/dto/comment/comment.dto';

@Controller('comment')
export class CommentController
{
    constructor( private readonly commentService : CommentService ) {}

    @Get(":id")
    getOne(
        @Param("id", ParseIntPipe) id : number
    ) : Promise<any>
    {
        try {
            return this.commentService.getOne(id)
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Get()
    getAll() : Promise<any>
    {
        try {
            return this.commentService.getAll()            
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post()
    addComment(
        @Body(ValidationPipe) newComment : Comment_DTO
    ) : Promise<any>
    {
        try {
            return this.commentService.addComment(newComment)
        } catch (error) {
            return error            
        }
    }

    @Patch("/:id")
    updateComment(
        @Param("id", ParseIntPipe) idComment : number,
        @Body(ValidationPipe) newComment : Comment_DTO
    ) : Promise<any>
    {
        try {
            return this.commentService.updateComment(idComment, newComment)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Delete("/:id")
    deleteComment(
        @Param("id", ParseIntPipe) idComment : number,
    ) : Promise<any>
    {
        try {
            return this.commentService.deleteComment(idComment)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}
