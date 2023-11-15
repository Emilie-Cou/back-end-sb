import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { BlogCom_DTO } from 'src/shared/dto/blog-com/blog-com.dto';
import { BlogComEntity } from 'src/shared/entities/blog-com/blog-com.entity';
import { Repository } from 'typeorm';

@Injectable()
export class BlogComService
{
    constructor( @InjectRepository(BlogComEntity) private readonly blogComRepo : Repository<BlogComEntity> ) {}

    async getOne(idCom : number)
    {
        return await this.blogComRepo.findOneBy({idCom})
    }

    async getAll()
    {
        return await this.blogComRepo.find()
    }

    async addBlogCom(newBlogCom : BlogCom_DTO)
    {
        return  await this.blogComRepo.save(newBlogCom)
    }

    async updateBlogCom(idBlogCom : number, newBlogCom : BlogCom_DTO)
    {
        return await this.blogComRepo.update(idBlogCom, newBlogCom)
    }

    async deleteBlogCom(idBlogCom : number)
    {
        return await this.blogComRepo.softDelete(idBlogCom)
    }
}
