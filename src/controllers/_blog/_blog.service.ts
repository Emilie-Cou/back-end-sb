import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Blog_DTO } from 'src/shared/dto/blog/blog.dto';
import { BlogEntity } from 'src/shared/entities/blog/blog.entity';
import { Repository } from 'typeorm';

@Injectable()
export class BlogService 
{
    constructor(@InjectRepository(BlogEntity) private readonly blogRepo : Repository<BlogEntity>) {}

    async getOne(idBlog : number)
    {
        return await this.blogRepo.findOneBy({idBlog})
    }

    async getAll()
    {
        return await this.blogRepo.find()
    }

    async addBlog(newBlog : Blog_DTO)
    {
        return  await this.blogRepo.save(newBlog)
    }

    async updateBlog(idBlog : number, newBlog : Blog_DTO)
    {
        await this.blogRepo.findOneByOrFail({idBlog})
            .catch(error => {
                console.log(error);
                throw new HttpException("Ce prof est introuvable", HttpStatus.NOT_FOUND)
            }
        )

        return await this.blogRepo.update(idBlog, newBlog)
    }

    async deleteBlog(idBlog : number)
    {
        await this.blogRepo.findOneByOrFail({idBlog})
            .catch(error => {
                console.log(error);
                throw new HttpException("Ce prof est introuvable", HttpStatus.NOT_FOUND)
            }
        )

        return await this.blogRepo.softDelete(idBlog)
    }
}
