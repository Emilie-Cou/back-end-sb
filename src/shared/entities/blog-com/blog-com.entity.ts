import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";
import { BlogEntity } from "../blog/blog.entity";
import { ClasseEntity } from "../classe/classe.entity";

@Entity("blogCom")
export class BlogComEntity extends LifeTime
{
    @PrimaryGeneratedColumn()
    idCom : number

    @ManyToOne(() => BlogEntity, (blog) => blog.idBlog, { cascade : ["insert", "update"] })
    idBlog : BlogEntity

    @ManyToOne(() => ClasseEntity, (classe) => classe.idClasse, { cascade : ["insert", "update"] })
    idClasse : ClasseEntity

    @Column({ type : "nvarchar", length : "25", nullable : false})
    prenom : string

    @Column({ type : "nvarchar", length : "250", nullable : false})
    content : string
}
