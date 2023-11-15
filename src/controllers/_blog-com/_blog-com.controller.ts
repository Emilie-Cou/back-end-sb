import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, ValidationPipe } from '@nestjs/common';
import { BlogCom_DTO } from 'src/shared/dto/blog-com/blog-com.dto';
import { BlogComService } from './_blog-com.service';

@Controller('blog-com')
export class BlogComController
{
    constructor( private readonly blogComService : BlogComService ) {}
    
    @Get(":id")
    getOne(
        @Param("id", ParseIntPipe) id : number
    ) : Promise<any>
    {
        try {
            return this.blogComService.getOne(id)
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Get()
    getAll() : Promise<any>
    {
        try {
            return this.blogComService.getAll()            
        } catch (error) {
            console.log(error);
            return error
        }
    }

    @Post()
    addBlogCom(
        @Body(ValidationPipe) newBlogCom : BlogCom_DTO
    ) : Promise<any>
    {
        try {
            return this.blogComService.addBlogCom(newBlogCom)
        } catch (error) {
            return error            
        }
    }

    @Patch("/:id")
    updateBlogCom(
        @Param("id", ParseIntPipe) idBlogCom : number,
        @Body(ValidationPipe) newBlogCom : BlogCom_DTO
    ) : Promise<any>
    {
        try {
            return this.blogComService.updateBlogCom(idBlogCom, newBlogCom)
        } catch (error) {
            console.log(error);
            return error            
        }
    }

    @Delete("/:id")
    deleteBlogCom(
        @Param("id", ParseIntPipe) idBlogCom : number,
    ) : Promise<any>
    {
        try {
            return this.blogComService.deleteBlogCom(idBlogCom)
        } catch (error) {
            console.log(error);
            return error            
        }
    }
}
