import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { ClasseEntity } from "../classe/classe.entity";
import { LifeTime } from "../lifeTime.entity";

@Entity("msgParent")
export class MsgParentEntity extends LifeTime
{
    @PrimaryGeneratedColumn()
    idMsg : number

    @ManyToOne(() => ClasseEntity, (classe) => classe.idClasse, { cascade : ["insert", "update"] })
    classe : ClasseEntity

    @Column({ type : "nvarchar", length : "25", nullable : false})
    prenom : string

    @Column({ type : "nvarchar", length : "250", nullable : false})
    content : string    
}
