import { Column, Entity, JoinColumn, OneToOne, PrimaryColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";
import { ProfEntity } from "../prof/prof.entity";

@Entity("classe")
export class ClasseEntity extends LifeTime
{
    @PrimaryColumn({ type : "nvarchar", length : "3", nullable : false, unique : true})
    idClasse : string

    @OneToOne(() => ProfEntity, { cascade : ["insert", "update"] })
    @JoinColumn()
    idProf : ProfEntity

    @Column({ type : "nvarchar", length : "20", nullable : false})
    nomClasse : string

    @Column({ type : "nvarchar", length : "200", nullable : false})
    miniDesc : string

    @Column({ type : "nvarchar", length : "500", nullable : false})
    desc : string

    @Column({ type : "nvarchar", length : "100", nullable : true})
    img : string
}
