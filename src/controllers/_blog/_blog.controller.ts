import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, ValidationPipe } from '@nestjs/common';
import { Blog_DTO } from 'src/shared/dto/blog/blog.dto';
import { BlogService } from './_blog.service';

@Controller('blog')
export class BlogController 
{
    constructor(private readonly blogService : BlogService) {}

    @Get(":id")
    getOne(
        @Param("id", ParseIntPipe) id : number
    ) : Promise<any>
    {
        try {
            return this.blogService.getOne(id)
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Get("/classe/:idClasse")
    async getOneByClassId(
        @Param("idClasse") idClasse : string
    ) : Promise<any>
    {
        try {
            let test = await this.blogService.getAllByIdClasse(idClasse)
            console.log(test);
            
            return test
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Get()
    getAll() : Promise<any>
    {
        try {
            return this.blogService.getAll()            
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post()
    addBlog(
        @Body(ValidationPipe) newBlog : Blog_DTO
    ) : Promise<any>
    {
        try {
            return this.blogService.addBlog(newBlog)
        } catch (error) {
            return error            
        }
    }

    @Patch("/:id")
    updateBlog(
        @Param("id", ParseIntPipe) idBlog : number,
        @Body(ValidationPipe) newBlog : Blog_DTO
    ) : Promise<any>
    {
        try {
            return this.blogService.updateBlog(idBlog, newBlog)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Delete("/:id")
    deleteBlog(
        @Param("id", ParseIntPipe) idBlog : number,
    ) : Promise<any>
    {
        try {
            return this.blogService.deleteBlog(idBlog)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}