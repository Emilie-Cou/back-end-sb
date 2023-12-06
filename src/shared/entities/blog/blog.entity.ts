import { Column, Entity, JoinColumn, OneToOne, PrimaryGeneratedColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";
import { ClasseEntity } from "../classe/classe.entity";

@Entity("blog")
export class BlogEntity extends LifeTime
{
    @PrimaryGeneratedColumn()
    idBlog : number

    @OneToOne(() => ClasseEntity, (classeEntity) => classeEntity.idClasse, {cascade: ["insert", "update"]})
    @JoinColumn()
    classe : ClasseEntity

    @Column({ type : "nvarchar", length : "50", nullable : false})
    titre : string

    @Column({ type : "nvarchar", length : "100", nullable : true})
    img : string

    @Column({ type : "nvarchar", length : "500", nullable : false})
    desc : string
}