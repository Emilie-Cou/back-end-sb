import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";

@Entity("comment")
export class CommentEntity extends LifeTime
{
    @PrimaryGeneratedColumn()
    id : number

    @Column({ type : "nvarchar", length : "25", nullable : false})
    prenom : string

    @Column({ type : "nvarchar", length : "250", nullable : false})
    content : string    
}